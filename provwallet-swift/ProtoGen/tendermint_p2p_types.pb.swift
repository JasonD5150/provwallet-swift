// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tendermint/p2p/types.proto
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

public struct Tendermint_P2p_NetAddress {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var ip: String = String()

  public var port: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tendermint_P2p_ProtocolVersion {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var p2P: UInt64 = 0

  public var block: UInt64 = 0

  public var app: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tendermint_P2p_DefaultNodeInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var protocolVersion: Tendermint_P2p_ProtocolVersion {
    get {return _protocolVersion ?? Tendermint_P2p_ProtocolVersion()}
    set {_protocolVersion = newValue}
  }
  /// Returns true if `protocolVersion` has been explicitly set.
  public var hasProtocolVersion: Bool {return self._protocolVersion != nil}
  /// Clears the value of `protocolVersion`. Subsequent reads from it will return its default value.
  public mutating func clearProtocolVersion() {self._protocolVersion = nil}

  public var defaultNodeID: String = String()

  public var listenAddr: String = String()

  public var network: String = String()

  public var version: String = String()

  public var channels: Data = Data()

  public var moniker: String = String()

  public var other: Tendermint_P2p_DefaultNodeInfoOther {
    get {return _other ?? Tendermint_P2p_DefaultNodeInfoOther()}
    set {_other = newValue}
  }
  /// Returns true if `other` has been explicitly set.
  public var hasOther: Bool {return self._other != nil}
  /// Clears the value of `other`. Subsequent reads from it will return its default value.
  public mutating func clearOther() {self._other = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _protocolVersion: Tendermint_P2p_ProtocolVersion? = nil
  fileprivate var _other: Tendermint_P2p_DefaultNodeInfoOther? = nil
}

public struct Tendermint_P2p_DefaultNodeInfoOther {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var txIndex: String = String()

  public var rpcAddress: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tendermint.p2p"

extension Tendermint_P2p_NetAddress: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NetAddress"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "ip"),
    3: .same(proto: "port"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.ip) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.port) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.ip.isEmpty {
      try visitor.visitSingularStringField(value: self.ip, fieldNumber: 2)
    }
    if self.port != 0 {
      try visitor.visitSingularUInt32Field(value: self.port, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_P2p_NetAddress, rhs: Tendermint_P2p_NetAddress) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.ip != rhs.ip {return false}
    if lhs.port != rhs.port {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_P2p_ProtocolVersion: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProtocolVersion"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "p2p"),
    2: .same(proto: "block"),
    3: .same(proto: "app"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.p2P) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.block) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.app) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.p2P != 0 {
      try visitor.visitSingularUInt64Field(value: self.p2P, fieldNumber: 1)
    }
    if self.block != 0 {
      try visitor.visitSingularUInt64Field(value: self.block, fieldNumber: 2)
    }
    if self.app != 0 {
      try visitor.visitSingularUInt64Field(value: self.app, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_P2p_ProtocolVersion, rhs: Tendermint_P2p_ProtocolVersion) -> Bool {
    if lhs.p2P != rhs.p2P {return false}
    if lhs.block != rhs.block {return false}
    if lhs.app != rhs.app {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_P2p_DefaultNodeInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DefaultNodeInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "protocol_version"),
    2: .standard(proto: "default_node_id"),
    3: .standard(proto: "listen_addr"),
    4: .same(proto: "network"),
    5: .same(proto: "version"),
    6: .same(proto: "channels"),
    7: .same(proto: "moniker"),
    8: .same(proto: "other"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._protocolVersion) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.defaultNodeID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.listenAddr) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.network) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.version) }()
      case 6: try { try decoder.decodeSingularBytesField(value: &self.channels) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.moniker) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._other) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._protocolVersion {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.defaultNodeID.isEmpty {
      try visitor.visitSingularStringField(value: self.defaultNodeID, fieldNumber: 2)
    }
    if !self.listenAddr.isEmpty {
      try visitor.visitSingularStringField(value: self.listenAddr, fieldNumber: 3)
    }
    if !self.network.isEmpty {
      try visitor.visitSingularStringField(value: self.network, fieldNumber: 4)
    }
    if !self.version.isEmpty {
      try visitor.visitSingularStringField(value: self.version, fieldNumber: 5)
    }
    if !self.channels.isEmpty {
      try visitor.visitSingularBytesField(value: self.channels, fieldNumber: 6)
    }
    if !self.moniker.isEmpty {
      try visitor.visitSingularStringField(value: self.moniker, fieldNumber: 7)
    }
    if let v = self._other {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_P2p_DefaultNodeInfo, rhs: Tendermint_P2p_DefaultNodeInfo) -> Bool {
    if lhs._protocolVersion != rhs._protocolVersion {return false}
    if lhs.defaultNodeID != rhs.defaultNodeID {return false}
    if lhs.listenAddr != rhs.listenAddr {return false}
    if lhs.network != rhs.network {return false}
    if lhs.version != rhs.version {return false}
    if lhs.channels != rhs.channels {return false}
    if lhs.moniker != rhs.moniker {return false}
    if lhs._other != rhs._other {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_P2p_DefaultNodeInfoOther: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DefaultNodeInfoOther"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tx_index"),
    2: .standard(proto: "rpc_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.txIndex) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.rpcAddress) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.txIndex.isEmpty {
      try visitor.visitSingularStringField(value: self.txIndex, fieldNumber: 1)
    }
    if !self.rpcAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.rpcAddress, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_P2p_DefaultNodeInfoOther, rhs: Tendermint_P2p_DefaultNodeInfoOther) -> Bool {
    if lhs.txIndex != rhs.txIndex {return false}
    if lhs.rpcAddress != rhs.rpcAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
