// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/mint/v1beta1/mint.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Minter represents the minting state.
public struct Cosmos_Mint_V1beta1_Minter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// current annual inflation rate
  public var inflation: String = String()

  /// current annual expected provisions
  public var annualProvisions: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Params holds parameters for the mint module.
public struct Cosmos_Mint_V1beta1_Params {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// type of coin to mint
  public var mintDenom: String = String()

  /// maximum annual change in inflation rate
  public var inflationRateChange: String = String()

  /// maximum inflation rate
  public var inflationMax: String = String()

  /// minimum inflation rate
  public var inflationMin: String = String()

  /// goal of percent bonded atoms
  public var goalBonded: String = String()

  /// expected blocks per year
  public var blocksPerYear: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmos.mint.v1beta1"

extension Cosmos_Mint_V1beta1_Minter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Minter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "inflation"),
    2: .standard(proto: "annual_provisions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.inflation) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.annualProvisions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.inflation.isEmpty {
      try visitor.visitSingularStringField(value: self.inflation, fieldNumber: 1)
    }
    if !self.annualProvisions.isEmpty {
      try visitor.visitSingularStringField(value: self.annualProvisions, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Mint_V1beta1_Minter, rhs: Cosmos_Mint_V1beta1_Minter) -> Bool {
    if lhs.inflation != rhs.inflation {return false}
    if lhs.annualProvisions != rhs.annualProvisions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Mint_V1beta1_Params: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Params"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "mint_denom"),
    2: .standard(proto: "inflation_rate_change"),
    3: .standard(proto: "inflation_max"),
    4: .standard(proto: "inflation_min"),
    5: .standard(proto: "goal_bonded"),
    6: .standard(proto: "blocks_per_year"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.mintDenom) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.inflationRateChange) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.inflationMax) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.inflationMin) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.goalBonded) }()
      case 6: try { try decoder.decodeSingularUInt64Field(value: &self.blocksPerYear) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.mintDenom.isEmpty {
      try visitor.visitSingularStringField(value: self.mintDenom, fieldNumber: 1)
    }
    if !self.inflationRateChange.isEmpty {
      try visitor.visitSingularStringField(value: self.inflationRateChange, fieldNumber: 2)
    }
    if !self.inflationMax.isEmpty {
      try visitor.visitSingularStringField(value: self.inflationMax, fieldNumber: 3)
    }
    if !self.inflationMin.isEmpty {
      try visitor.visitSingularStringField(value: self.inflationMin, fieldNumber: 4)
    }
    if !self.goalBonded.isEmpty {
      try visitor.visitSingularStringField(value: self.goalBonded, fieldNumber: 5)
    }
    if self.blocksPerYear != 0 {
      try visitor.visitSingularUInt64Field(value: self.blocksPerYear, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Mint_V1beta1_Params, rhs: Cosmos_Mint_V1beta1_Params) -> Bool {
    if lhs.mintDenom != rhs.mintDenom {return false}
    if lhs.inflationRateChange != rhs.inflationRateChange {return false}
    if lhs.inflationMax != rhs.inflationMax {return false}
    if lhs.inflationMin != rhs.inflationMin {return false}
    if lhs.goalBonded != rhs.goalBonded {return false}
    if lhs.blocksPerYear != rhs.blocksPerYear {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
