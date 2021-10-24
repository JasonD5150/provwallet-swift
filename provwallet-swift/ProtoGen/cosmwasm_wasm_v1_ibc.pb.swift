// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmwasm/wasm/v1/ibc.proto
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

/// MsgIBCSend
public struct Cosmwasm_Wasm_V1_MsgIBCSend {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// the channel by which the packet will be sent
  public var channel: String = String()

  /// Timeout height relative to the current block height.
  /// The timeout is disabled when set to 0.
  public var timeoutHeight: UInt64 = 0

  /// Timeout timestamp (in nanoseconds) relative to the current block timestamp.
  /// The timeout is disabled when set to 0.
  public var timeoutTimestamp: UInt64 = 0

  /// data is the payload to transfer
  public var data: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgIBCCloseChannel port and channel need to be owned by the contract
public struct Cosmwasm_Wasm_V1_MsgIBCCloseChannel {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var channel: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmwasm.wasm.v1"

extension Cosmwasm_Wasm_V1_MsgIBCSend: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgIBCSend"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "channel"),
    4: .standard(proto: "timeout_height"),
    5: .standard(proto: "timeout_timestamp"),
    6: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularStringField(value: &self.channel) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.timeoutHeight) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.timeoutTimestamp) }()
      case 6: try { try decoder.decodeSingularBytesField(value: &self.data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.channel.isEmpty {
      try visitor.visitSingularStringField(value: self.channel, fieldNumber: 2)
    }
    if self.timeoutHeight != 0 {
      try visitor.visitSingularUInt64Field(value: self.timeoutHeight, fieldNumber: 4)
    }
    if self.timeoutTimestamp != 0 {
      try visitor.visitSingularUInt64Field(value: self.timeoutTimestamp, fieldNumber: 5)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmwasm_Wasm_V1_MsgIBCSend, rhs: Cosmwasm_Wasm_V1_MsgIBCSend) -> Bool {
    if lhs.channel != rhs.channel {return false}
    if lhs.timeoutHeight != rhs.timeoutHeight {return false}
    if lhs.timeoutTimestamp != rhs.timeoutTimestamp {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmwasm_Wasm_V1_MsgIBCCloseChannel: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgIBCCloseChannel"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "channel"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularStringField(value: &self.channel) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.channel.isEmpty {
      try visitor.visitSingularStringField(value: self.channel, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmwasm_Wasm_V1_MsgIBCCloseChannel, rhs: Cosmwasm_Wasm_V1_MsgIBCCloseChannel) -> Bool {
    if lhs.channel != rhs.channel {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
