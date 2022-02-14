// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/base/abci/v1beta1/abci.proto
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

/// TxResponse defines a structure containing relevant tx data and metadata. The
/// tags are stringified and the log is JSON decoded.
public struct Cosmos_Base_Abci_V1beta1_TxResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The block height
  public var height: Int64 = 0

  /// The transaction hash.
  public var txhash: String = String()

  /// Namespace for the Code
  public var codespace: String = String()

  /// Response code.
  public var code: UInt32 = 0

  /// Result bytes, if any.
  public var data: String = String()

  /// The output of the application's logger (raw string). May be
  /// non-deterministic.
  public var rawLog: String = String()

  /// The output of the application's logger (typed). May be non-deterministic.
  public var logs: [Cosmos_Base_Abci_V1beta1_ABCIMessageLog] = []

  /// Additional information. May be non-deterministic.
  public var info: String = String()

  /// Amount of gas requested for transaction.
  public var gasWanted: Int64 = 0

  /// Amount of gas consumed by transaction.
  public var gasUsed: Int64 = 0

  /// The request transaction bytes.
  public var tx: SwiftProtobuf.Google_Protobuf_Any {
    get {return _tx ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_tx = newValue}
  }
  /// Returns true if `tx` has been explicitly set.
  public var hasTx: Bool {return self._tx != nil}
  /// Clears the value of `tx`. Subsequent reads from it will return its default value.
  public mutating func clearTx() {self._tx = nil}

  /// Time of the previous block. For heights > 1, it's the weighted median of
  /// the timestamps of the valid votes in the block.LastCommit. For height == 1,
  /// it's genesis time.
  public var timestamp: String = String()

  /// Events defines all the events emitted by processing a transaction. Note,
  /// these events include those emitted by processing all the messages and those
  /// emitted from the ante handler. Whereas Logs contains the events, with
  /// additional metadata, emitted only by processing the messages.
  ///
  /// Since: cosmos-sdk 0.42.11, 0.44.5, 0.45
  public var events: [Tendermint_Abci_Event] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _tx: SwiftProtobuf.Google_Protobuf_Any? = nil
}

/// ABCIMessageLog defines a structure containing an indexed tx ABCI message log.
public struct Cosmos_Base_Abci_V1beta1_ABCIMessageLog {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var msgIndex: UInt32 = 0

  public var log: String = String()

  /// Events contains a slice of Event objects that were emitted during some
  /// execution.
  public var events: [Cosmos_Base_Abci_V1beta1_StringEvent] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// StringEvent defines en Event object wrapper where all the attributes
/// contain key/value pairs that are strings instead of raw bytes.
public struct Cosmos_Base_Abci_V1beta1_StringEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var type: String = String()

  public var attributes: [Cosmos_Base_Abci_V1beta1_Attribute] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Attribute defines an attribute wrapper where the key and value are
/// strings instead of raw bytes.
public struct Cosmos_Base_Abci_V1beta1_Attribute {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var key: String = String()

  public var value: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// GasInfo defines tx execution gas context.
public struct Cosmos_Base_Abci_V1beta1_GasInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// GasWanted is the maximum units of work we allow this tx to perform.
  public var gasWanted: UInt64 = 0

  /// GasUsed is the amount of gas actually consumed.
  public var gasUsed: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Result is the union of ResponseFormat and ResponseCheckTx.
public struct Cosmos_Base_Abci_V1beta1_Result {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Data is any data returned from message or handler execution. It MUST be
  /// length prefixed in order to separate data from multiple message executions.
  public var data: Data = Data()

  /// Log contains the log information from message or handler execution.
  public var log: String = String()

  /// Events contains a slice of Event objects that were emitted during message
  /// or handler execution.
  public var events: [Tendermint_Abci_Event] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// SimulationResponse defines the response generated when a transaction is
/// successfully simulated.
public struct Cosmos_Base_Abci_V1beta1_SimulationResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var gasInfo: Cosmos_Base_Abci_V1beta1_GasInfo {
    get {return _gasInfo ?? Cosmos_Base_Abci_V1beta1_GasInfo()}
    set {_gasInfo = newValue}
  }
  /// Returns true if `gasInfo` has been explicitly set.
  public var hasGasInfo: Bool {return self._gasInfo != nil}
  /// Clears the value of `gasInfo`. Subsequent reads from it will return its default value.
  public mutating func clearGasInfo() {self._gasInfo = nil}

  public var result: Cosmos_Base_Abci_V1beta1_Result {
    get {return _result ?? Cosmos_Base_Abci_V1beta1_Result()}
    set {_result = newValue}
  }
  /// Returns true if `result` has been explicitly set.
  public var hasResult: Bool {return self._result != nil}
  /// Clears the value of `result`. Subsequent reads from it will return its default value.
  public mutating func clearResult() {self._result = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _gasInfo: Cosmos_Base_Abci_V1beta1_GasInfo? = nil
  fileprivate var _result: Cosmos_Base_Abci_V1beta1_Result? = nil
}

/// MsgData defines the data returned in a Result object during message
/// execution.
public struct Cosmos_Base_Abci_V1beta1_MsgData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var msgType: String = String()

  public var data: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// TxMsgData defines a list of MsgData. A transaction will have a MsgData object
/// for each message.
public struct Cosmos_Base_Abci_V1beta1_TxMsgData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var data: [Cosmos_Base_Abci_V1beta1_MsgData] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// SearchTxsResult defines a structure for querying txs pageable
public struct Cosmos_Base_Abci_V1beta1_SearchTxsResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Count of all txs
  public var totalCount: UInt64 = 0

  /// Count of txs in current page
  public var count: UInt64 = 0

  /// Index of current page, start from 1
  public var pageNumber: UInt64 = 0

  /// Count of total pages
  public var pageTotal: UInt64 = 0

  /// Max count txs per page
  public var limit: UInt64 = 0

  /// List of txs in current page
  public var txs: [Cosmos_Base_Abci_V1beta1_TxResponse] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmos.base.abci.v1beta1"

extension Cosmos_Base_Abci_V1beta1_TxResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TxResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "height"),
    2: .same(proto: "txhash"),
    3: .same(proto: "codespace"),
    4: .same(proto: "code"),
    5: .same(proto: "data"),
    6: .standard(proto: "raw_log"),
    7: .same(proto: "logs"),
    8: .same(proto: "info"),
    9: .standard(proto: "gas_wanted"),
    10: .standard(proto: "gas_used"),
    11: .same(proto: "tx"),
    12: .same(proto: "timestamp"),
    13: .same(proto: "events"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.height) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.txhash) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.codespace) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self.code) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.data) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.rawLog) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.logs) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.info) }()
      case 9: try { try decoder.decodeSingularInt64Field(value: &self.gasWanted) }()
      case 10: try { try decoder.decodeSingularInt64Field(value: &self.gasUsed) }()
      case 11: try { try decoder.decodeSingularMessageField(value: &self._tx) }()
      case 12: try { try decoder.decodeSingularStringField(value: &self.timestamp) }()
      case 13: try { try decoder.decodeRepeatedMessageField(value: &self.events) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.height != 0 {
      try visitor.visitSingularInt64Field(value: self.height, fieldNumber: 1)
    }
    if !self.txhash.isEmpty {
      try visitor.visitSingularStringField(value: self.txhash, fieldNumber: 2)
    }
    if !self.codespace.isEmpty {
      try visitor.visitSingularStringField(value: self.codespace, fieldNumber: 3)
    }
    if self.code != 0 {
      try visitor.visitSingularUInt32Field(value: self.code, fieldNumber: 4)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularStringField(value: self.data, fieldNumber: 5)
    }
    if !self.rawLog.isEmpty {
      try visitor.visitSingularStringField(value: self.rawLog, fieldNumber: 6)
    }
    if !self.logs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.logs, fieldNumber: 7)
    }
    if !self.info.isEmpty {
      try visitor.visitSingularStringField(value: self.info, fieldNumber: 8)
    }
    if self.gasWanted != 0 {
      try visitor.visitSingularInt64Field(value: self.gasWanted, fieldNumber: 9)
    }
    if self.gasUsed != 0 {
      try visitor.visitSingularInt64Field(value: self.gasUsed, fieldNumber: 10)
    }
    if let v = self._tx {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    }
    if !self.timestamp.isEmpty {
      try visitor.visitSingularStringField(value: self.timestamp, fieldNumber: 12)
    }
    if !self.events.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.events, fieldNumber: 13)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_TxResponse, rhs: Cosmos_Base_Abci_V1beta1_TxResponse) -> Bool {
    if lhs.height != rhs.height {return false}
    if lhs.txhash != rhs.txhash {return false}
    if lhs.codespace != rhs.codespace {return false}
    if lhs.code != rhs.code {return false}
    if lhs.data != rhs.data {return false}
    if lhs.rawLog != rhs.rawLog {return false}
    if lhs.logs != rhs.logs {return false}
    if lhs.info != rhs.info {return false}
    if lhs.gasWanted != rhs.gasWanted {return false}
    if lhs.gasUsed != rhs.gasUsed {return false}
    if lhs._tx != rhs._tx {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.events != rhs.events {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Base_Abci_V1beta1_ABCIMessageLog: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ABCIMessageLog"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "msg_index"),
    2: .same(proto: "log"),
    3: .same(proto: "events"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.msgIndex) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.log) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.events) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.msgIndex != 0 {
      try visitor.visitSingularUInt32Field(value: self.msgIndex, fieldNumber: 1)
    }
    if !self.log.isEmpty {
      try visitor.visitSingularStringField(value: self.log, fieldNumber: 2)
    }
    if !self.events.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.events, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_ABCIMessageLog, rhs: Cosmos_Base_Abci_V1beta1_ABCIMessageLog) -> Bool {
    if lhs.msgIndex != rhs.msgIndex {return false}
    if lhs.log != rhs.log {return false}
    if lhs.events != rhs.events {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Base_Abci_V1beta1_StringEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StringEvent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "attributes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.type) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.attributes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if !self.attributes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.attributes, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_StringEvent, rhs: Cosmos_Base_Abci_V1beta1_StringEvent) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.attributes != rhs.attributes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Base_Abci_V1beta1_Attribute: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Attribute"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.key) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_Attribute, rhs: Cosmos_Base_Abci_V1beta1_Attribute) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Base_Abci_V1beta1_GasInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GasInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gas_wanted"),
    2: .standard(proto: "gas_used"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.gasWanted) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.gasUsed) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.gasWanted != 0 {
      try visitor.visitSingularUInt64Field(value: self.gasWanted, fieldNumber: 1)
    }
    if self.gasUsed != 0 {
      try visitor.visitSingularUInt64Field(value: self.gasUsed, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_GasInfo, rhs: Cosmos_Base_Abci_V1beta1_GasInfo) -> Bool {
    if lhs.gasWanted != rhs.gasWanted {return false}
    if lhs.gasUsed != rhs.gasUsed {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Base_Abci_V1beta1_Result: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Result"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
    2: .same(proto: "log"),
    3: .same(proto: "events"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.data) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.log) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.events) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 1)
    }
    if !self.log.isEmpty {
      try visitor.visitSingularStringField(value: self.log, fieldNumber: 2)
    }
    if !self.events.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.events, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_Result, rhs: Cosmos_Base_Abci_V1beta1_Result) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.log != rhs.log {return false}
    if lhs.events != rhs.events {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Base_Abci_V1beta1_SimulationResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SimulationResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gas_info"),
    2: .same(proto: "result"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._gasInfo) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._result) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._gasInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._result {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_SimulationResponse, rhs: Cosmos_Base_Abci_V1beta1_SimulationResponse) -> Bool {
    if lhs._gasInfo != rhs._gasInfo {return false}
    if lhs._result != rhs._result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Base_Abci_V1beta1_MsgData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgData"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "msg_type"),
    2: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.msgType) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.msgType.isEmpty {
      try visitor.visitSingularStringField(value: self.msgType, fieldNumber: 1)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_MsgData, rhs: Cosmos_Base_Abci_V1beta1_MsgData) -> Bool {
    if lhs.msgType != rhs.msgType {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Base_Abci_V1beta1_TxMsgData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TxMsgData"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.data.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.data, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_TxMsgData, rhs: Cosmos_Base_Abci_V1beta1_TxMsgData) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Base_Abci_V1beta1_SearchTxsResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SearchTxsResult"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "total_count"),
    2: .same(proto: "count"),
    3: .standard(proto: "page_number"),
    4: .standard(proto: "page_total"),
    5: .same(proto: "limit"),
    6: .same(proto: "txs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.totalCount) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.count) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.pageNumber) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.pageTotal) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.limit) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.txs) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.totalCount != 0 {
      try visitor.visitSingularUInt64Field(value: self.totalCount, fieldNumber: 1)
    }
    if self.count != 0 {
      try visitor.visitSingularUInt64Field(value: self.count, fieldNumber: 2)
    }
    if self.pageNumber != 0 {
      try visitor.visitSingularUInt64Field(value: self.pageNumber, fieldNumber: 3)
    }
    if self.pageTotal != 0 {
      try visitor.visitSingularUInt64Field(value: self.pageTotal, fieldNumber: 4)
    }
    if self.limit != 0 {
      try visitor.visitSingularUInt64Field(value: self.limit, fieldNumber: 5)
    }
    if !self.txs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.txs, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmos_Base_Abci_V1beta1_SearchTxsResult, rhs: Cosmos_Base_Abci_V1beta1_SearchTxsResult) -> Bool {
    if lhs.totalCount != rhs.totalCount {return false}
    if lhs.count != rhs.count {return false}
    if lhs.pageNumber != rhs.pageNumber {return false}
    if lhs.pageTotal != rhs.pageTotal {return false}
    if lhs.limit != rhs.limit {return false}
    if lhs.txs != rhs.txs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
