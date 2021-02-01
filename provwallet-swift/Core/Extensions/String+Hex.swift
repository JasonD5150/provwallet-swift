//
//  String+Hex.swift
//
//  Created by Pavlo Boiko on 12.07.18.
//  Copyright © 2018 Essentia. All rights reserved.
//
//  Adapted for Provenance on 2021/01/31
//  by jdfigure
//

import Foundation

fileprivate var hexPrefix = "0x"

extension String {

    public func stripHexPrefix() -> String {
        var hex = self
        if hex.hasPrefix(hexPrefix) {
            hex = String(hex.dropFirst(hexPrefix.count))
        }
        return hex
    }

}

extension Data {
    public static func fromHex(_ hex: String) -> Data? {
        let string = hex.lowercased().stripHexPrefix()
        let array = Array<UInt8>(hex: string)
        if (array.count == 0) {
            if (hex == "0x" || hex == "") {
                return Data()
            } else {
                return nil
            }
        }
        return Data(array)
    }

    public func constantTimeComparisonTo(_ other:Data?) -> Bool {
        guard let rhs = other else {return false}
        guard count == rhs.count else {return false}
        var difference = UInt8(0x00)
        for i in 0..<count { // compare full length
            difference |= self[i] ^ rhs[i] //constant time
        }
        return difference == UInt8(0x00)
    }
}
