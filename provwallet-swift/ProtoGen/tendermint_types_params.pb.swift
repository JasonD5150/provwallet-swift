// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tendermint/types/params.proto
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

/// ConsensusParams contains consensus critical parameters that determine the
/// validity of blocks.
public struct Tendermint_Types_ConsensusParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var block: Tendermint_Types_BlockParams {
    get {return _block ?? Tendermint_Types_BlockParams()}
    set {_block = newValue}
  }
  /// Returns true if `block` has been explicitly set.
  public var hasBlock: Bool {return self._block != nil}
  /// Clears the value of `block`. Subsequent reads from it will return its default value.
  public mutating func clearBlock() {self._block = nil}

  public var evidence: Tendermint_Types_EvidenceParams {
    get {return _evidence ?? Tendermint_Types_EvidenceParams()}
    set {_evidence = newValue}
  }
  /// Returns true if `evidence` has been explicitly set.
  public var hasEvidence: Bool {return self._evidence != nil}
  /// Clears the value of `evidence`. Subsequent reads from it will return its default value.
  public mutating func clearEvidence() {self._evidence = nil}

  public var validator: Tendermint_Types_ValidatorParams {
    get {return _validator ?? Tendermint_Types_ValidatorParams()}
    set {_validator = newValue}
  }
  /// Returns true if `validator` has been explicitly set.
  public var hasValidator: Bool {return self._validator != nil}
  /// Clears the value of `validator`. Subsequent reads from it will return its default value.
  public mutating func clearValidator() {self._validator = nil}

  public var version: Tendermint_Types_VersionParams {
    get {return _version ?? Tendermint_Types_VersionParams()}
    set {_version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  public var hasVersion: Bool {return self._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  public mutating func clearVersion() {self._version = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _block: Tendermint_Types_BlockParams? = nil
  fileprivate var _evidence: Tendermint_Types_EvidenceParams? = nil
  fileprivate var _validator: Tendermint_Types_ValidatorParams? = nil
  fileprivate var _version: Tendermint_Types_VersionParams? = nil
}

/// BlockParams contains limits on the block size.
public struct Tendermint_Types_BlockParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Max block size, in bytes.
  /// Note: must be greater than 0
  public var maxBytes: Int64 = 0

  /// Max gas per block.
  /// Note: must be greater or equal to -1
  public var maxGas: Int64 = 0

  /// Minimum time increment between consecutive blocks (in milliseconds) If the
  /// block header timestamp is ahead of the system clock, decrease this value.
  ///
  /// Not exposed to the application.
  public var timeIotaMs: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// EvidenceParams determine how we handle evidence of malfeasance.
public struct Tendermint_Types_EvidenceParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Max age of evidence, in blocks.
  ///
  /// The basic formula for calculating this is: MaxAgeDuration / {average block
  /// time}.
  public var maxAgeNumBlocks: Int64 = 0

  /// Max age of evidence, in time.
  ///
  /// It should correspond with an app's "unbonding period" or other similar
  /// mechanism for handling [Nothing-At-Stake
  /// attacks](https://github.com/ethereum/wiki/wiki/Proof-of-Stake-FAQ#what-is-the-nothing-at-stake-problem-and-how-can-it-be-fixed).
  public var maxAgeDuration: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _maxAgeDuration ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_maxAgeDuration = newValue}
  }
  /// Returns true if `maxAgeDuration` has been explicitly set.
  public var hasMaxAgeDuration: Bool {return self._maxAgeDuration != nil}
  /// Clears the value of `maxAgeDuration`. Subsequent reads from it will return its default value.
  public mutating func clearMaxAgeDuration() {self._maxAgeDuration = nil}

  /// This sets the maximum size of total evidence in bytes that can be committed in a single block.
  /// and should fall comfortably under the max block bytes.
  /// Default is 1048576 or 1MB
  public var maxBytes: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _maxAgeDuration: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

/// ValidatorParams restrict the public key types validators can use.
/// NOTE: uses ABCI pubkey naming, not Amino names.
public struct Tendermint_Types_ValidatorParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var pubKeyTypes: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// VersionParams contains the ABCI application version.
public struct Tendermint_Types_VersionParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var appVersion: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// HashedParams is a subset of ConsensusParams.
///
/// It is hashed into the Header.ConsensusHash.
public struct Tendermint_Types_HashedParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var blockMaxBytes: Int64 = 0

  public var blockMaxGas: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tendermint.types"

extension Tendermint_Types_ConsensusParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ConsensusParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "block"),
    2: .same(proto: "evidence"),
    3: .same(proto: "validator"),
    4: .same(proto: "version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._block) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._evidence) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._validator) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._version) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._block {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._evidence {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._validator {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._version {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_ConsensusParams, rhs: Tendermint_Types_ConsensusParams) -> Bool {
    if lhs._block != rhs._block {return false}
    if lhs._evidence != rhs._evidence {return false}
    if lhs._validator != rhs._validator {return false}
    if lhs._version != rhs._version {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_BlockParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BlockParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "max_bytes"),
    2: .standard(proto: "max_gas"),
    3: .standard(proto: "time_iota_ms"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.maxBytes) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.maxGas) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.timeIotaMs) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.maxBytes != 0 {
      try visitor.visitSingularInt64Field(value: self.maxBytes, fieldNumber: 1)
    }
    if self.maxGas != 0 {
      try visitor.visitSingularInt64Field(value: self.maxGas, fieldNumber: 2)
    }
    if self.timeIotaMs != 0 {
      try visitor.visitSingularInt64Field(value: self.timeIotaMs, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_BlockParams, rhs: Tendermint_Types_BlockParams) -> Bool {
    if lhs.maxBytes != rhs.maxBytes {return false}
    if lhs.maxGas != rhs.maxGas {return false}
    if lhs.timeIotaMs != rhs.timeIotaMs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_EvidenceParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EvidenceParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "max_age_num_blocks"),
    2: .standard(proto: "max_age_duration"),
    3: .standard(proto: "max_bytes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.maxAgeNumBlocks) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._maxAgeDuration) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.maxBytes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.maxAgeNumBlocks != 0 {
      try visitor.visitSingularInt64Field(value: self.maxAgeNumBlocks, fieldNumber: 1)
    }
    if let v = self._maxAgeDuration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.maxBytes != 0 {
      try visitor.visitSingularInt64Field(value: self.maxBytes, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_EvidenceParams, rhs: Tendermint_Types_EvidenceParams) -> Bool {
    if lhs.maxAgeNumBlocks != rhs.maxAgeNumBlocks {return false}
    if lhs._maxAgeDuration != rhs._maxAgeDuration {return false}
    if lhs.maxBytes != rhs.maxBytes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_ValidatorParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ValidatorParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "pub_key_types"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.pubKeyTypes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.pubKeyTypes.isEmpty {
      try visitor.visitRepeatedStringField(value: self.pubKeyTypes, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_ValidatorParams, rhs: Tendermint_Types_ValidatorParams) -> Bool {
    if lhs.pubKeyTypes != rhs.pubKeyTypes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_VersionParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VersionParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "app_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.appVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.appVersion != 0 {
      try visitor.visitSingularUInt64Field(value: self.appVersion, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_VersionParams, rhs: Tendermint_Types_VersionParams) -> Bool {
    if lhs.appVersion != rhs.appVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_HashedParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HashedParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "block_max_bytes"),
    2: .standard(proto: "block_max_gas"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.blockMaxBytes) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.blockMaxGas) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.blockMaxBytes != 0 {
      try visitor.visitSingularInt64Field(value: self.blockMaxBytes, fieldNumber: 1)
    }
    if self.blockMaxGas != 0 {
      try visitor.visitSingularInt64Field(value: self.blockMaxGas, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_HashedParams, rhs: Tendermint_Types_HashedParams) -> Bool {
    if lhs.blockMaxBytes != rhs.blockMaxBytes {return false}
    if lhs.blockMaxGas != rhs.blockMaxGas {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
