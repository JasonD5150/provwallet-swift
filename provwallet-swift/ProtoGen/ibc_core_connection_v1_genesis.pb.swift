// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ibc/core/connection/v1/genesis.proto
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

/// GenesisState defines the ibc connection submodule's genesis state.
public struct Ibc_Core_Connection_V1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var connections: [Ibc_Core_Connection_V1_IdentifiedConnection] = []

  public var clientConnectionPaths: [Ibc_Core_Connection_V1_ConnectionPaths] = []

  /// the sequence for the next generated connection identifier
  public var nextConnectionSequence: UInt64 = 0

  public var params: Ibc_Core_Connection_V1_Params {
    get {return _params ?? Ibc_Core_Connection_V1_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  public var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  public mutating func clearParams() {self._params = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _params: Ibc_Core_Connection_V1_Params? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ibc.core.connection.v1"

extension Ibc_Core_Connection_V1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenesisState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "connections"),
    2: .standard(proto: "client_connection_paths"),
    3: .standard(proto: "next_connection_sequence"),
    4: .same(proto: "params"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.connections) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.clientConnectionPaths) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.nextConnectionSequence) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.connections.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.connections, fieldNumber: 1)
    }
    if !self.clientConnectionPaths.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.clientConnectionPaths, fieldNumber: 2)
    }
    if self.nextConnectionSequence != 0 {
      try visitor.visitSingularUInt64Field(value: self.nextConnectionSequence, fieldNumber: 3)
    }
    if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Connection_V1_GenesisState, rhs: Ibc_Core_Connection_V1_GenesisState) -> Bool {
    if lhs.connections != rhs.connections {return false}
    if lhs.clientConnectionPaths != rhs.clientConnectionPaths {return false}
    if lhs.nextConnectionSequence != rhs.nextConnectionSequence {return false}
    if lhs._params != rhs._params {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
