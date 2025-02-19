// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ibc/core/port/v1/query.proto
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

/// QueryAppVersionRequest is the request type for the Query/AppVersion RPC method
public struct Ibc_Core_Port_V1_QueryAppVersionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// port unique identifier
  public var portID: String = String()

  /// connection unique identifier
  public var connectionID: String = String()

  /// whether the channel is ordered or unordered
  public var ordering: Ibc_Core_Channel_V1_Order = .noneUnspecified

  /// counterparty channel end
  public var counterparty: Ibc_Core_Channel_V1_Counterparty {
    get {return _counterparty ?? Ibc_Core_Channel_V1_Counterparty()}
    set {_counterparty = newValue}
  }
  /// Returns true if `counterparty` has been explicitly set.
  public var hasCounterparty: Bool {return self._counterparty != nil}
  /// Clears the value of `counterparty`. Subsequent reads from it will return its default value.
  public mutating func clearCounterparty() {self._counterparty = nil}

  /// proposed version
  public var proposedVersion: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _counterparty: Ibc_Core_Channel_V1_Counterparty? = nil
}

/// QueryAppVersionResponse is the response type for the Query/AppVersion RPC method.
public struct Ibc_Core_Port_V1_QueryAppVersionResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// port id associated with the request identifiers
  public var portID: String = String()

  /// supported app version
  public var version: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ibc.core.port.v1"

extension Ibc_Core_Port_V1_QueryAppVersionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryAppVersionRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "port_id"),
    2: .standard(proto: "connection_id"),
    3: .same(proto: "ordering"),
    4: .same(proto: "counterparty"),
    5: .standard(proto: "proposed_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.portID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.connectionID) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.ordering) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._counterparty) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.proposedVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.portID.isEmpty {
      try visitor.visitSingularStringField(value: self.portID, fieldNumber: 1)
    }
    if !self.connectionID.isEmpty {
      try visitor.visitSingularStringField(value: self.connectionID, fieldNumber: 2)
    }
    if self.ordering != .noneUnspecified {
      try visitor.visitSingularEnumField(value: self.ordering, fieldNumber: 3)
    }
    if let v = self._counterparty {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if !self.proposedVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.proposedVersion, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Port_V1_QueryAppVersionRequest, rhs: Ibc_Core_Port_V1_QueryAppVersionRequest) -> Bool {
    if lhs.portID != rhs.portID {return false}
    if lhs.connectionID != rhs.connectionID {return false}
    if lhs.ordering != rhs.ordering {return false}
    if lhs._counterparty != rhs._counterparty {return false}
    if lhs.proposedVersion != rhs.proposedVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Port_V1_QueryAppVersionResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryAppVersionResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "port_id"),
    2: .same(proto: "version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.portID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.version) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.portID.isEmpty {
      try visitor.visitSingularStringField(value: self.portID, fieldNumber: 1)
    }
    if !self.version.isEmpty {
      try visitor.visitSingularStringField(value: self.version, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Port_V1_QueryAppVersionResponse, rhs: Ibc_Core_Port_V1_QueryAppVersionResponse) -> Bool {
    if lhs.portID != rhs.portID {return false}
    if lhs.version != rhs.version {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
