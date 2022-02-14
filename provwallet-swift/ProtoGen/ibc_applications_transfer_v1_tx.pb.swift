// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ibc/applications/transfer/v1/tx.proto
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

/// MsgTransfer defines a msg to transfer fungible tokens (i.e Coins) between
/// ICS20 enabled chains. See ICS Spec here:
/// https://github.com/cosmos/ibc/tree/master/spec/app/ics-020-fungible-token-transfer#data-structures
public struct Ibc_Applications_Transfer_V1_MsgTransfer {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// the port on which the packet will be sent
  public var sourcePort: String = String()

  /// the channel by which the packet will be sent
  public var sourceChannel: String = String()

  /// the tokens to be transferred
  public var token: Cosmos_Base_V1beta1_Coin {
    get {return _token ?? Cosmos_Base_V1beta1_Coin()}
    set {_token = newValue}
  }
  /// Returns true if `token` has been explicitly set.
  public var hasToken: Bool {return self._token != nil}
  /// Clears the value of `token`. Subsequent reads from it will return its default value.
  public mutating func clearToken() {self._token = nil}

  /// the sender address
  public var sender: String = String()

  /// the recipient address on the destination chain
  public var receiver: String = String()

  /// Timeout height relative to the current block height.
  /// The timeout is disabled when set to 0.
  public var timeoutHeight: Ibc_Core_Client_V1_Height {
    get {return _timeoutHeight ?? Ibc_Core_Client_V1_Height()}
    set {_timeoutHeight = newValue}
  }
  /// Returns true if `timeoutHeight` has been explicitly set.
  public var hasTimeoutHeight: Bool {return self._timeoutHeight != nil}
  /// Clears the value of `timeoutHeight`. Subsequent reads from it will return its default value.
  public mutating func clearTimeoutHeight() {self._timeoutHeight = nil}

  /// Timeout timestamp (in nanoseconds) relative to the current block timestamp.
  /// The timeout is disabled when set to 0.
  public var timeoutTimestamp: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Cosmos_Base_V1beta1_Coin? = nil
  fileprivate var _timeoutHeight: Ibc_Core_Client_V1_Height? = nil
}

/// MsgTransferResponse defines the Msg/Transfer response type.
public struct Ibc_Applications_Transfer_V1_MsgTransferResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ibc.applications.transfer.v1"

extension Ibc_Applications_Transfer_V1_MsgTransfer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgTransfer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "source_port"),
    2: .standard(proto: "source_channel"),
    3: .same(proto: "token"),
    4: .same(proto: "sender"),
    5: .same(proto: "receiver"),
    6: .standard(proto: "timeout_height"),
    7: .standard(proto: "timeout_timestamp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sourcePort) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.sourceChannel) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.receiver) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._timeoutHeight) }()
      case 7: try { try decoder.decodeSingularUInt64Field(value: &self.timeoutTimestamp) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sourcePort.isEmpty {
      try visitor.visitSingularStringField(value: self.sourcePort, fieldNumber: 1)
    }
    if !self.sourceChannel.isEmpty {
      try visitor.visitSingularStringField(value: self.sourceChannel, fieldNumber: 2)
    }
    if let v = self._token {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 4)
    }
    if !self.receiver.isEmpty {
      try visitor.visitSingularStringField(value: self.receiver, fieldNumber: 5)
    }
    if let v = self._timeoutHeight {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if self.timeoutTimestamp != 0 {
      try visitor.visitSingularUInt64Field(value: self.timeoutTimestamp, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Applications_Transfer_V1_MsgTransfer, rhs: Ibc_Applications_Transfer_V1_MsgTransfer) -> Bool {
    if lhs.sourcePort != rhs.sourcePort {return false}
    if lhs.sourceChannel != rhs.sourceChannel {return false}
    if lhs._token != rhs._token {return false}
    if lhs.sender != rhs.sender {return false}
    if lhs.receiver != rhs.receiver {return false}
    if lhs._timeoutHeight != rhs._timeoutHeight {return false}
    if lhs.timeoutTimestamp != rhs.timeoutTimestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Applications_Transfer_V1_MsgTransferResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgTransferResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Applications_Transfer_V1_MsgTransferResponse, rhs: Ibc_Applications_Transfer_V1_MsgTransferResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
