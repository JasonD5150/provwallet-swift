//
//  Bech58.swift
//
//  Created by Pavlo Boiko on 2/5/19.
//  Copyright © 2019 Essentia. All rights reserved.
//
//  Adapted for Provenance on 2021/01/31
//  by jdfigure
//

import Foundation

private protocol Encoding {
    static var baseAlphabets: String { get }
    static var zeroAlphabet: Character { get }
    static var base: Int { get }

    // log(256) / log(base), rounded up
    static func sizeFromByte(size: Int) -> Int
    // log(base) / log(256), rounded up
    static func sizeFromBase(size: Int) -> Int

    // Public
    static func encode(_ bytes: Data) -> String
    static func decode(_ string: String) -> Data
}

private struct _Base58: Encoding {
    static let baseAlphabets = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"
    static var zeroAlphabet: Character = "1"
    static var base: Int = 58

    static func sizeFromByte(size: Int) -> Int {
	    size * 138 / 100 + 1
    }
    static func sizeFromBase(size: Int) -> Int {
	    size * 733 / 1000 + 1
    }
}

public struct Base58 {
    public static func encode(_ bytes: Data) -> String {
	    _Base58.encode(bytes)
    }
    public static func decode(_ string: String) -> Data? {
	    _Base58.decode(string)
    }
}

// The Base encoding used is home made, and has some differences. Especially,
// leading zeros are kept as single zeros when conversion happens.
extension Encoding {
    static func convertBytesToBase(_ bytes: Data) -> [UInt8] {
        var length = 0
        let size = sizeFromByte(size: bytes.count)
        var encodedBytes: [UInt8] = Array(repeating: 0, count: size)

        for b in bytes {
            var carry = Int(b)
            var i = 0
            for j in (0...encodedBytes.count - 1).reversed() where carry != 0 || i < length {
                carry += 256 * Int(encodedBytes[j])
                encodedBytes[j] = UInt8(carry % base)
                carry /= base
                i += 1
            }

            assert(carry == 0)

            length = i
        }

        var zerosToRemove = 0
        for b in encodedBytes {
            if b != 0 { break }
            zerosToRemove += 1
        }

        encodedBytes.removeFirst(zerosToRemove)
        return encodedBytes
    }

    static func encode(_ bytes: Data) -> String {
        var bytes = bytes
        var zerosCount = 0

        for b in bytes {
            if b != 0 { break }
            zerosCount += 1
        }

        bytes.removeFirst(zerosCount)

        let encodedBytes = convertBytesToBase(bytes)

        var str = ""
        while 0 < zerosCount {
            str += String(zeroAlphabet)
            zerosCount -= 1
        }

        for b in encodedBytes {
            str += String(baseAlphabets[String.Index(utf16Offset: Int(b), in: baseAlphabets)])
        }

        return str
    }

    static func decode(_ string: String) -> Data {
        guard !string.isEmpty else { return Data() }

        var zerosCount = 0
        var length = 0
        for c in string {
            if c != zeroAlphabet { break }
            zerosCount += 1
        }
        let size = sizeFromBase(size: string.lengthOfBytes(using: .utf8) - zerosCount)
        var decodedBytes: [UInt8] = Array(repeating: 0, count: size)
        for c in string {
            guard let baseIndex = baseAlphabets.firstIndex(of: c) else { return Data() }

            var carry = baseIndex.utf16Offset(in: baseAlphabets)
            var i = 0
            for j in (0...decodedBytes.count - 1).reversed() where carry != 0 || i < length {
                carry += base * Int(decodedBytes[j])
                decodedBytes[j] = UInt8(carry % 256)
                carry /= 256
                i += 1
            }

            assert(carry == 0)
            length = i
        }

        // skip leading zeros
        var zerosToRemove = 0

        for b in decodedBytes {
            if b != 0 { break }
            zerosToRemove += 1
        }
        decodedBytes.removeFirst(zerosToRemove)

        return Data(repeating: 0, count: zerosCount) + Data(decodedBytes)
    }
}

public struct Bech32 {
    private static let base32Alphabets = "qpzry9x8gf2tvdw0s3jn54khce6mua7l"

    public static func encode(_ bytes: Data, prefix: String, seperator: String = ":") -> String {
        let payload = convertTo5bit(data: bytes, pad: true)
        let checksum: Data = createChecksum(prefix: prefix, payload: payload) // Data of [UInt5]
        let combined: Data = payload + checksum // Data of [UInt5]
        var base32 = ""
        for b in combined {
            base32 += String(base32Alphabets[String.Index(utf16Offset: Int(b), in: base32Alphabets)])
        }

        return prefix + seperator + base32
    }

    // string : "bitcoincash:qql8zpwglr3q5le9jnjxkmypefaku39dkygsx29fzk"
    public static func decode(_ string: String, seperator: String = ":") -> (prefix: String, data: Data)? {
        // We can't have empty string.
        // Bech32 should be uppercase only / lowercase only.
        guard !string.isEmpty && [string.lowercased(), string.uppercased()].contains(string) else {
            return nil
        }

        let components = string.components(separatedBy: seperator)
        // We can only handle string contains both scheme and base32
        guard components.count == 2 else {
            return nil
        }
        let (prefix, base32) = (components[0], components[1])

        var decodedIn5bit: [UInt8] = [UInt8]()
        for c in base32.lowercased() {
            // We can't have characters other than base32 alphabets.
            guard let baseIndex = base32Alphabets.firstIndex(of: c)?.utf16Offset(in: base32Alphabets) else {
                return nil
            }
            decodedIn5bit.append(UInt8(baseIndex))
        }

        // We can't have invalid checksum
        let payload = Data(decodedIn5bit)
        guard verifyChecksum(prefix: prefix, payload: payload) else {
            return nil
        }

        // Drop checksum
        guard let bytes = try? convertFrom5bit(data: payload.dropLast(8)) else {
            return nil
        }
        return (prefix, Data(bytes))
    }

    private static func verifyChecksum(prefix: String, payload: Data) -> Bool {
	    PolyMod(expand(prefix) + payload) == 0
    }

    private static func expand(_ prefix: String) -> Data {
        var ret: Data = Data()
        let buf: [UInt8] = Array(prefix.utf8)
        for b in buf {
            ret += b >> 5
        }
        ret += Data(repeating: 0, count: 1)
        for b in buf {
            ret += b & 0x1f
        }
        return ret
    }

    private static func createChecksum(prefix: String, payload: Data) -> Data {
        let enc: Data = expand(prefix) + payload + Data(repeating: 0, count: 6)

        let mod: UInt64 = PolyMod(enc)
        var ret: Data = Data()
        for i in 0...5 {
            ret += UInt8((mod >> (5 * (5 - i))) & 0x1f)
        }
        return ret
    }

    private static func PolyMod(_ data: Data) -> UInt64 {
        var c: UInt64 = 1
        for d in data {
            let c0: UInt8 = UInt8(c >> 25)
            c = ((c & 0x1ffffff) << 5) ^ UInt64(d)
            if (((c0 >> 0) & 1) == 1) { c ^= 0x3b6a57b2 }
            if (((c0 >> 1) & 1) == 1) { c ^= 0x26508e6d }
            if (((c0 >> 2) & 1) == 1) { c ^= 0x1ea119fa }
            if (((c0 >> 3) & 1) == 1) { c ^= 0x3d4233dd }
            if (((c0 >> 4) & 1) == 1) { c ^= 0x2a1462b3 }
        }
        return c ^ 1
    }

    private static func convertTo5bit(data: Data, pad: Bool) -> Data {
        var acc = Int()
        var bits = UInt8()
        let maxv: Int = 31 // 31 = 0x1f = 00011111
        var converted: [UInt8] = []
        for d in data {
            acc = (acc << 8) | Int(d)
            bits += 8

            while bits >= 5 {
                bits -= 5
                converted.append(UInt8(acc >> Int(bits) & maxv))
            }
        }

        let lastBits: UInt8 = UInt8(acc << (5 - bits) & maxv)
        if pad && bits > 0 {
            converted.append(lastBits)
        }
        return Data(converted)
    }

    internal static func convertFrom5bit(data: Data) throws -> Data {
        var acc = Int()
        var bits = UInt8()
        let maxv: Int = 255 // 255 = 0xff = 11111111
        var converted: [UInt8] = []
        for d in data {
            guard (d >> 5) == 0 else {
                throw DecodeError.invalidCharacter
            }
            acc = (acc << 5) | Int(d)
            bits += 5

            while bits >= 8 {
                bits -= 8
                converted.append(UInt8(acc >> Int(bits) & maxv))
            }
        }

        let lastBits: UInt8 = UInt8(acc << (8 - bits) & maxv)
        guard bits < 5 && lastBits == 0  else {
            throw DecodeError.invalidBits
        }

        return Data(converted)
    }

    private enum DecodeError: Error {
        case invalidCharacter
        case invalidBits
    }
}

