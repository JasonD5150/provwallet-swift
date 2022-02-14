// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ibc/core/client/v1/tx.proto
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

/// MsgCreateClient defines a message to create an IBC client
public struct Ibc_Core_Client_V1_MsgCreateClient {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// light client state
  public var clientState: SwiftProtobuf.Google_Protobuf_Any {
    get {return _clientState ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_clientState = newValue}
  }
  /// Returns true if `clientState` has been explicitly set.
  public var hasClientState: Bool {return self._clientState != nil}
  /// Clears the value of `clientState`. Subsequent reads from it will return its default value.
  public mutating func clearClientState() {self._clientState = nil}

  /// consensus state associated with the client that corresponds to a given
  /// height.
  public var consensusState: SwiftProtobuf.Google_Protobuf_Any {
    get {return _consensusState ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_consensusState = newValue}
  }
  /// Returns true if `consensusState` has been explicitly set.
  public var hasConsensusState: Bool {return self._consensusState != nil}
  /// Clears the value of `consensusState`. Subsequent reads from it will return its default value.
  public mutating func clearConsensusState() {self._consensusState = nil}

  /// signer address
  public var signer: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _clientState: SwiftProtobuf.Google_Protobuf_Any? = nil
  fileprivate var _consensusState: SwiftProtobuf.Google_Protobuf_Any? = nil
}

/// MsgCreateClientResponse defines the Msg/CreateClient response type.
public struct Ibc_Core_Client_V1_MsgCreateClientResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgUpdateClient defines an sdk.Msg to update a IBC client state using
/// the given header.
public struct Ibc_Core_Client_V1_MsgUpdateClient {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// client unique identifier
  public var clientID: String = String()

  /// header to update the light client
  public var header: SwiftProtobuf.Google_Protobuf_Any {
    get {return _header ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {self._header = nil}

  /// signer address
  public var signer: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _header: SwiftProtobuf.Google_Protobuf_Any? = nil
}

/// MsgUpdateClientResponse defines the Msg/UpdateClient response type.
public struct Ibc_Core_Client_V1_MsgUpdateClientResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgUpgradeClient defines an sdk.Msg to upgrade an IBC client to a new client
/// state
public struct Ibc_Core_Client_V1_MsgUpgradeClient {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// client unique identifier
  public var clientID: String = String()

  /// upgraded client state
  public var clientState: SwiftProtobuf.Google_Protobuf_Any {
    get {return _clientState ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_clientState = newValue}
  }
  /// Returns true if `clientState` has been explicitly set.
  public var hasClientState: Bool {return self._clientState != nil}
  /// Clears the value of `clientState`. Subsequent reads from it will return its default value.
  public mutating func clearClientState() {self._clientState = nil}

  /// upgraded consensus state, only contains enough information to serve as a
  /// basis of trust in update logic
  public var consensusState: SwiftProtobuf.Google_Protobuf_Any {
    get {return _consensusState ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_consensusState = newValue}
  }
  /// Returns true if `consensusState` has been explicitly set.
  public var hasConsensusState: Bool {return self._consensusState != nil}
  /// Clears the value of `consensusState`. Subsequent reads from it will return its default value.
  public mutating func clearConsensusState() {self._consensusState = nil}

  /// proof that old chain committed to new client
  public var proofUpgradeClient: Data = Data()

  /// proof that old chain committed to new consensus state
  public var proofUpgradeConsensusState: Data = Data()

  /// signer address
  public var signer: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _clientState: SwiftProtobuf.Google_Protobuf_Any? = nil
  fileprivate var _consensusState: SwiftProtobuf.Google_Protobuf_Any? = nil
}

/// MsgUpgradeClientResponse defines the Msg/UpgradeClient response type.
public struct Ibc_Core_Client_V1_MsgUpgradeClientResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgSubmitMisbehaviour defines an sdk.Msg type that submits Evidence for
/// light client misbehaviour.
public struct Ibc_Core_Client_V1_MsgSubmitMisbehaviour {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// client unique identifier
  public var clientID: String = String()

  /// misbehaviour used for freezing the light client
  public var misbehaviour: SwiftProtobuf.Google_Protobuf_Any {
    get {return _misbehaviour ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_misbehaviour = newValue}
  }
  /// Returns true if `misbehaviour` has been explicitly set.
  public var hasMisbehaviour: Bool {return self._misbehaviour != nil}
  /// Clears the value of `misbehaviour`. Subsequent reads from it will return its default value.
  public mutating func clearMisbehaviour() {self._misbehaviour = nil}

  /// signer address
  public var signer: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _misbehaviour: SwiftProtobuf.Google_Protobuf_Any? = nil
}

/// MsgSubmitMisbehaviourResponse defines the Msg/SubmitMisbehaviour response
/// type.
public struct Ibc_Core_Client_V1_MsgSubmitMisbehaviourResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ibc.core.client.v1"

extension Ibc_Core_Client_V1_MsgCreateClient: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgCreateClient"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "client_state"),
    2: .standard(proto: "consensus_state"),
    3: .same(proto: "signer"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._clientState) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._consensusState) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.signer) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._clientState {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._consensusState {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.signer.isEmpty {
      try visitor.visitSingularStringField(value: self.signer, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Client_V1_MsgCreateClient, rhs: Ibc_Core_Client_V1_MsgCreateClient) -> Bool {
    if lhs._clientState != rhs._clientState {return false}
    if lhs._consensusState != rhs._consensusState {return false}
    if lhs.signer != rhs.signer {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Client_V1_MsgCreateClientResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgCreateClientResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Client_V1_MsgCreateClientResponse, rhs: Ibc_Core_Client_V1_MsgCreateClientResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Client_V1_MsgUpdateClient: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgUpdateClient"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "client_id"),
    2: .same(proto: "header"),
    3: .same(proto: "signer"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.clientID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._header) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.signer) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.clientID.isEmpty {
      try visitor.visitSingularStringField(value: self.clientID, fieldNumber: 1)
    }
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.signer.isEmpty {
      try visitor.visitSingularStringField(value: self.signer, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Client_V1_MsgUpdateClient, rhs: Ibc_Core_Client_V1_MsgUpdateClient) -> Bool {
    if lhs.clientID != rhs.clientID {return false}
    if lhs._header != rhs._header {return false}
    if lhs.signer != rhs.signer {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Client_V1_MsgUpdateClientResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgUpdateClientResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Client_V1_MsgUpdateClientResponse, rhs: Ibc_Core_Client_V1_MsgUpdateClientResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Client_V1_MsgUpgradeClient: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgUpgradeClient"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "client_id"),
    2: .standard(proto: "client_state"),
    3: .standard(proto: "consensus_state"),
    4: .standard(proto: "proof_upgrade_client"),
    5: .standard(proto: "proof_upgrade_consensus_state"),
    6: .same(proto: "signer"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.clientID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._clientState) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._consensusState) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.proofUpgradeClient) }()
      case 5: try { try decoder.decodeSingularBytesField(value: &self.proofUpgradeConsensusState) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.signer) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.clientID.isEmpty {
      try visitor.visitSingularStringField(value: self.clientID, fieldNumber: 1)
    }
    if let v = self._clientState {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._consensusState {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.proofUpgradeClient.isEmpty {
      try visitor.visitSingularBytesField(value: self.proofUpgradeClient, fieldNumber: 4)
    }
    if !self.proofUpgradeConsensusState.isEmpty {
      try visitor.visitSingularBytesField(value: self.proofUpgradeConsensusState, fieldNumber: 5)
    }
    if !self.signer.isEmpty {
      try visitor.visitSingularStringField(value: self.signer, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Client_V1_MsgUpgradeClient, rhs: Ibc_Core_Client_V1_MsgUpgradeClient) -> Bool {
    if lhs.clientID != rhs.clientID {return false}
    if lhs._clientState != rhs._clientState {return false}
    if lhs._consensusState != rhs._consensusState {return false}
    if lhs.proofUpgradeClient != rhs.proofUpgradeClient {return false}
    if lhs.proofUpgradeConsensusState != rhs.proofUpgradeConsensusState {return false}
    if lhs.signer != rhs.signer {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Client_V1_MsgUpgradeClientResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgUpgradeClientResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Client_V1_MsgUpgradeClientResponse, rhs: Ibc_Core_Client_V1_MsgUpgradeClientResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Client_V1_MsgSubmitMisbehaviour: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgSubmitMisbehaviour"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "client_id"),
    2: .same(proto: "misbehaviour"),
    3: .same(proto: "signer"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.clientID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._misbehaviour) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.signer) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.clientID.isEmpty {
      try visitor.visitSingularStringField(value: self.clientID, fieldNumber: 1)
    }
    if let v = self._misbehaviour {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.signer.isEmpty {
      try visitor.visitSingularStringField(value: self.signer, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Client_V1_MsgSubmitMisbehaviour, rhs: Ibc_Core_Client_V1_MsgSubmitMisbehaviour) -> Bool {
    if lhs.clientID != rhs.clientID {return false}
    if lhs._misbehaviour != rhs._misbehaviour {return false}
    if lhs.signer != rhs.signer {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ibc_Core_Client_V1_MsgSubmitMisbehaviourResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgSubmitMisbehaviourResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ibc_Core_Client_V1_MsgSubmitMisbehaviourResponse, rhs: Ibc_Core_Client_V1_MsgSubmitMisbehaviourResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
