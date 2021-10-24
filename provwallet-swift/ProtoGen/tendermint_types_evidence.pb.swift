// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tendermint/types/evidence.proto
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

public struct Tendermint_Types_Evidence {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var sum: Tendermint_Types_Evidence.OneOf_Sum? = nil

  public var duplicateVoteEvidence: Tendermint_Types_DuplicateVoteEvidence {
    get {
      if case .duplicateVoteEvidence(let v)? = sum {return v}
      return Tendermint_Types_DuplicateVoteEvidence()
    }
    set {sum = .duplicateVoteEvidence(newValue)}
  }

  public var lightClientAttackEvidence: Tendermint_Types_LightClientAttackEvidence {
    get {
      if case .lightClientAttackEvidence(let v)? = sum {return v}
      return Tendermint_Types_LightClientAttackEvidence()
    }
    set {sum = .lightClientAttackEvidence(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Sum: Equatable {
    case duplicateVoteEvidence(Tendermint_Types_DuplicateVoteEvidence)
    case lightClientAttackEvidence(Tendermint_Types_LightClientAttackEvidence)

  #if !swift(>=4.1)
    public static func ==(lhs: Tendermint_Types_Evidence.OneOf_Sum, rhs: Tendermint_Types_Evidence.OneOf_Sum) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.duplicateVoteEvidence, .duplicateVoteEvidence): return {
        guard case .duplicateVoteEvidence(let l) = lhs, case .duplicateVoteEvidence(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.lightClientAttackEvidence, .lightClientAttackEvidence): return {
        guard case .lightClientAttackEvidence(let l) = lhs, case .lightClientAttackEvidence(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// DuplicateVoteEvidence contains evidence of a validator signed two conflicting votes.
public struct Tendermint_Types_DuplicateVoteEvidence {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var voteA: Tendermint_Types_Vote {
    get {return _storage._voteA ?? Tendermint_Types_Vote()}
    set {_uniqueStorage()._voteA = newValue}
  }
  /// Returns true if `voteA` has been explicitly set.
  public var hasVoteA: Bool {return _storage._voteA != nil}
  /// Clears the value of `voteA`. Subsequent reads from it will return its default value.
  public mutating func clearVoteA() {_uniqueStorage()._voteA = nil}

  public var voteB: Tendermint_Types_Vote {
    get {return _storage._voteB ?? Tendermint_Types_Vote()}
    set {_uniqueStorage()._voteB = newValue}
  }
  /// Returns true if `voteB` has been explicitly set.
  public var hasVoteB: Bool {return _storage._voteB != nil}
  /// Clears the value of `voteB`. Subsequent reads from it will return its default value.
  public mutating func clearVoteB() {_uniqueStorage()._voteB = nil}

  public var totalVotingPower: Int64 {
    get {return _storage._totalVotingPower}
    set {_uniqueStorage()._totalVotingPower = newValue}
  }

  public var validatorPower: Int64 {
    get {return _storage._validatorPower}
    set {_uniqueStorage()._validatorPower = newValue}
  }

  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return _storage._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {_uniqueStorage()._timestamp = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// LightClientAttackEvidence contains evidence of a set of validators attempting to mislead a light client.
public struct Tendermint_Types_LightClientAttackEvidence {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var conflictingBlock: Tendermint_Types_LightBlock {
    get {return _storage._conflictingBlock ?? Tendermint_Types_LightBlock()}
    set {_uniqueStorage()._conflictingBlock = newValue}
  }
  /// Returns true if `conflictingBlock` has been explicitly set.
  public var hasConflictingBlock: Bool {return _storage._conflictingBlock != nil}
  /// Clears the value of `conflictingBlock`. Subsequent reads from it will return its default value.
  public mutating func clearConflictingBlock() {_uniqueStorage()._conflictingBlock = nil}

  public var commonHeight: Int64 {
    get {return _storage._commonHeight}
    set {_uniqueStorage()._commonHeight = newValue}
  }

  public var byzantineValidators: [Tendermint_Types_Validator] {
    get {return _storage._byzantineValidators}
    set {_uniqueStorage()._byzantineValidators = newValue}
  }

  public var totalVotingPower: Int64 {
    get {return _storage._totalVotingPower}
    set {_uniqueStorage()._totalVotingPower = newValue}
  }

  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return _storage._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {_uniqueStorage()._timestamp = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Tendermint_Types_EvidenceList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var evidence: [Tendermint_Types_Evidence] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tendermint.types"

extension Tendermint_Types_Evidence: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Evidence"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "duplicate_vote_evidence"),
    2: .standard(proto: "light_client_attack_evidence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Tendermint_Types_DuplicateVoteEvidence?
        if let current = self.sum {
          try decoder.handleConflictingOneOf()
          if case .duplicateVoteEvidence(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.sum = .duplicateVoteEvidence(v)}
      }()
      case 2: try {
        var v: Tendermint_Types_LightClientAttackEvidence?
        if let current = self.sum {
          try decoder.handleConflictingOneOf()
          if case .lightClientAttackEvidence(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.sum = .lightClientAttackEvidence(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.sum {
    case .duplicateVoteEvidence?: try {
      guard case .duplicateVoteEvidence(let v)? = self.sum else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .lightClientAttackEvidence?: try {
      guard case .lightClientAttackEvidence(let v)? = self.sum else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_Evidence, rhs: Tendermint_Types_Evidence) -> Bool {
    if lhs.sum != rhs.sum {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_DuplicateVoteEvidence: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DuplicateVoteEvidence"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "vote_a"),
    2: .standard(proto: "vote_b"),
    3: .standard(proto: "total_voting_power"),
    4: .standard(proto: "validator_power"),
    5: .same(proto: "timestamp"),
  ]

  fileprivate class _StorageClass {
    var _voteA: Tendermint_Types_Vote? = nil
    var _voteB: Tendermint_Types_Vote? = nil
    var _totalVotingPower: Int64 = 0
    var _validatorPower: Int64 = 0
    var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _voteA = source._voteA
      _voteB = source._voteB
      _totalVotingPower = source._totalVotingPower
      _validatorPower = source._validatorPower
      _timestamp = source._timestamp
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._voteA) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._voteB) }()
        case 3: try { try decoder.decodeSingularInt64Field(value: &_storage._totalVotingPower) }()
        case 4: try { try decoder.decodeSingularInt64Field(value: &_storage._validatorPower) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._timestamp) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._voteA {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._voteB {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._totalVotingPower != 0 {
        try visitor.visitSingularInt64Field(value: _storage._totalVotingPower, fieldNumber: 3)
      }
      if _storage._validatorPower != 0 {
        try visitor.visitSingularInt64Field(value: _storage._validatorPower, fieldNumber: 4)
      }
      if let v = _storage._timestamp {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_DuplicateVoteEvidence, rhs: Tendermint_Types_DuplicateVoteEvidence) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._voteA != rhs_storage._voteA {return false}
        if _storage._voteB != rhs_storage._voteB {return false}
        if _storage._totalVotingPower != rhs_storage._totalVotingPower {return false}
        if _storage._validatorPower != rhs_storage._validatorPower {return false}
        if _storage._timestamp != rhs_storage._timestamp {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_LightClientAttackEvidence: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LightClientAttackEvidence"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "conflicting_block"),
    2: .standard(proto: "common_height"),
    3: .standard(proto: "byzantine_validators"),
    4: .standard(proto: "total_voting_power"),
    5: .same(proto: "timestamp"),
  ]

  fileprivate class _StorageClass {
    var _conflictingBlock: Tendermint_Types_LightBlock? = nil
    var _commonHeight: Int64 = 0
    var _byzantineValidators: [Tendermint_Types_Validator] = []
    var _totalVotingPower: Int64 = 0
    var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _conflictingBlock = source._conflictingBlock
      _commonHeight = source._commonHeight
      _byzantineValidators = source._byzantineValidators
      _totalVotingPower = source._totalVotingPower
      _timestamp = source._timestamp
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._conflictingBlock) }()
        case 2: try { try decoder.decodeSingularInt64Field(value: &_storage._commonHeight) }()
        case 3: try { try decoder.decodeRepeatedMessageField(value: &_storage._byzantineValidators) }()
        case 4: try { try decoder.decodeSingularInt64Field(value: &_storage._totalVotingPower) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._timestamp) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._conflictingBlock {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._commonHeight != 0 {
        try visitor.visitSingularInt64Field(value: _storage._commonHeight, fieldNumber: 2)
      }
      if !_storage._byzantineValidators.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._byzantineValidators, fieldNumber: 3)
      }
      if _storage._totalVotingPower != 0 {
        try visitor.visitSingularInt64Field(value: _storage._totalVotingPower, fieldNumber: 4)
      }
      if let v = _storage._timestamp {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_LightClientAttackEvidence, rhs: Tendermint_Types_LightClientAttackEvidence) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._conflictingBlock != rhs_storage._conflictingBlock {return false}
        if _storage._commonHeight != rhs_storage._commonHeight {return false}
        if _storage._byzantineValidators != rhs_storage._byzantineValidators {return false}
        if _storage._totalVotingPower != rhs_storage._totalVotingPower {return false}
        if _storage._timestamp != rhs_storage._timestamp {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_EvidenceList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EvidenceList"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "evidence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.evidence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.evidence.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.evidence, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tendermint_Types_EvidenceList, rhs: Tendermint_Types_EvidenceList) -> Bool {
    if lhs.evidence != rhs.evidence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
