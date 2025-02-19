//
//  BigInt+Extension.swift
//
//  Created by yuzushioh on 2018/01/24.
//  Copyright © 2018 yuzushioh. All rights reserved.
//
//  Adapted for Provenance on 2021/01/31
//  by jdfigure
//
import Foundation

extension BInt {
    var data: Data {
        let count = limbs.count
        var data = Data(count: count * 8)
        data.withUnsafeMutableBytes { (pointer) -> Void in
            guard var p = pointer.bindMemory(to: UInt8.self).baseAddress else { return }
            for i in (0..<count).reversed() {
                for j in (0..<8).reversed() {
                    p.pointee = UInt8((limbs[i] >> UInt64(j * 8)) & 0xff)
                    p += 1
                }
            }
        }

        return data
    }

    init?(hex: String) {
        self.init(number: hex.lowercased(), withBase: 16)
    }

    init(data: Data) {
        let n = data.count
        guard n > 0 else {
            self.init(0)
            return
        }

        let m = (n + 7) / 8
        var limbs = Limbs(repeating: 0, count: m)
        data.withUnsafeBytes { (ptr) -> Void in
            guard var p = ptr.baseAddress?.assumingMemoryBound(to: UInt8.self) else { return }
            let r = n % 8
            let k = r == 0 ? 8 : r
            for j in (0..<k).reversed() {
                limbs[m - 1] += UInt64(p.pointee) << UInt64(j * 8)
                p += 1
            }
            guard m > 1 else { return }
            for i in (0..<(m - 1)).reversed() {
                for j in (0..<8).reversed() {
                    limbs[i] += UInt64(p.pointee) << UInt64(j * 8)
                    p += 1
                }
            }
        }

        self.init(limbs: limbs)
    }
}
