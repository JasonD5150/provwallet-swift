// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: provenance/attribute/v1/tx.proto
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

/// MsgAddAttributeRequest defines an sdk.Msg type that is used to add a new attribute to an account
/// Attributes may only be set in an account by the account that the attribute name resolves to.
public struct Provenance_Attribute_V1_MsgAddAttributeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The attribute name.
  public var name: String = String()

  /// The attribute value.
  public var value: Data = Data()

  /// The attribute value type.
  public var attributeType: Provenance_Attribute_V1_AttributeType = .unspecified

  /// The account to add the attribute to.
  public var account: String = String()

  /// The address that the name must resolve to.
  public var owner: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgAddAttributeResponse defines the Msg/Vote response type.
public struct Provenance_Attribute_V1_MsgAddAttributeResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgUpdateAttributeRequest defines an sdk.Msg type that is used to update an existing attribute to an account
/// Attributes may only be set in an account by the account that the attribute name resolves to.
public struct Provenance_Attribute_V1_MsgUpdateAttributeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The attribute name.
  public var name: String = String()

  /// The original attribute value.
  public var originalValue: Data = Data()

  /// The update attribute value.
  public var updateValue: Data = Data()

  /// The original attribute value type.
  public var originalAttributeType: Provenance_Attribute_V1_AttributeType = .unspecified

  /// The update attribute value type.
  public var updateAttributeType: Provenance_Attribute_V1_AttributeType = .unspecified

  /// The account to add the attribute to.
  public var account: String = String()

  /// The address that the name must resolve to.
  public var owner: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgUpdateAttributeResponse defines the Msg/Vote response type.
public struct Provenance_Attribute_V1_MsgUpdateAttributeResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgDeleteAttributeRequest defines a message to delete an attribute from an account
/// Attributes may only be remove from an account by the account that the attribute name resolves to.
public struct Provenance_Attribute_V1_MsgDeleteAttributeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The attribute name.
  public var name: String = String()

  /// The account to add the attribute to.
  public var account: String = String()

  /// The address that the name must resolve to.
  public var owner: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgDeleteAttributeResponse defines the Msg/Vote response type.
public struct Provenance_Attribute_V1_MsgDeleteAttributeResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgDeleteDistinctAttributeRequest defines a message to delete an attribute with matching name, value, and type from
/// an account Attributes may only be remove from an account by the account that the attribute name resolves to.
public struct Provenance_Attribute_V1_MsgDeleteDistinctAttributeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The attribute name.
  public var name: String = String()

  /// The attribute value.
  public var value: Data = Data()

  /// The account to add the attribute to.
  public var account: String = String()

  /// The address that the name must resolve to.
  public var owner: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// MsgDeleteDistinctAttributeResponse defines the Msg/Vote response type.
public struct Provenance_Attribute_V1_MsgDeleteDistinctAttributeResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "provenance.attribute.v1"

extension Provenance_Attribute_V1_MsgAddAttributeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgAddAttributeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "value"),
    3: .standard(proto: "attribute_type"),
    4: .same(proto: "account"),
    5: .same(proto: "owner"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.value) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.attributeType) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.account) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.owner) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularBytesField(value: self.value, fieldNumber: 2)
    }
    if self.attributeType != .unspecified {
      try visitor.visitSingularEnumField(value: self.attributeType, fieldNumber: 3)
    }
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 4)
    }
    if !self.owner.isEmpty {
      try visitor.visitSingularStringField(value: self.owner, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Provenance_Attribute_V1_MsgAddAttributeRequest, rhs: Provenance_Attribute_V1_MsgAddAttributeRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.value != rhs.value {return false}
    if lhs.attributeType != rhs.attributeType {return false}
    if lhs.account != rhs.account {return false}
    if lhs.owner != rhs.owner {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Provenance_Attribute_V1_MsgAddAttributeResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgAddAttributeResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Provenance_Attribute_V1_MsgAddAttributeResponse, rhs: Provenance_Attribute_V1_MsgAddAttributeResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Provenance_Attribute_V1_MsgUpdateAttributeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgUpdateAttributeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "original_value"),
    3: .standard(proto: "update_value"),
    4: .standard(proto: "original_attribute_type"),
    5: .standard(proto: "update_attribute_type"),
    6: .same(proto: "account"),
    7: .same(proto: "owner"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.originalValue) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.updateValue) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.originalAttributeType) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.updateAttributeType) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.account) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.owner) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.originalValue.isEmpty {
      try visitor.visitSingularBytesField(value: self.originalValue, fieldNumber: 2)
    }
    if !self.updateValue.isEmpty {
      try visitor.visitSingularBytesField(value: self.updateValue, fieldNumber: 3)
    }
    if self.originalAttributeType != .unspecified {
      try visitor.visitSingularEnumField(value: self.originalAttributeType, fieldNumber: 4)
    }
    if self.updateAttributeType != .unspecified {
      try visitor.visitSingularEnumField(value: self.updateAttributeType, fieldNumber: 5)
    }
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 6)
    }
    if !self.owner.isEmpty {
      try visitor.visitSingularStringField(value: self.owner, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Provenance_Attribute_V1_MsgUpdateAttributeRequest, rhs: Provenance_Attribute_V1_MsgUpdateAttributeRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.originalValue != rhs.originalValue {return false}
    if lhs.updateValue != rhs.updateValue {return false}
    if lhs.originalAttributeType != rhs.originalAttributeType {return false}
    if lhs.updateAttributeType != rhs.updateAttributeType {return false}
    if lhs.account != rhs.account {return false}
    if lhs.owner != rhs.owner {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Provenance_Attribute_V1_MsgUpdateAttributeResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgUpdateAttributeResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Provenance_Attribute_V1_MsgUpdateAttributeResponse, rhs: Provenance_Attribute_V1_MsgUpdateAttributeResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Provenance_Attribute_V1_MsgDeleteAttributeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgDeleteAttributeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "account"),
    3: .same(proto: "owner"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.account) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.owner) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 2)
    }
    if !self.owner.isEmpty {
      try visitor.visitSingularStringField(value: self.owner, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Provenance_Attribute_V1_MsgDeleteAttributeRequest, rhs: Provenance_Attribute_V1_MsgDeleteAttributeRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.account != rhs.account {return false}
    if lhs.owner != rhs.owner {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Provenance_Attribute_V1_MsgDeleteAttributeResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgDeleteAttributeResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Provenance_Attribute_V1_MsgDeleteAttributeResponse, rhs: Provenance_Attribute_V1_MsgDeleteAttributeResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Provenance_Attribute_V1_MsgDeleteDistinctAttributeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgDeleteDistinctAttributeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "value"),
    3: .same(proto: "account"),
    4: .same(proto: "owner"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.value) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.account) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.owner) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularBytesField(value: self.value, fieldNumber: 2)
    }
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 3)
    }
    if !self.owner.isEmpty {
      try visitor.visitSingularStringField(value: self.owner, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Provenance_Attribute_V1_MsgDeleteDistinctAttributeRequest, rhs: Provenance_Attribute_V1_MsgDeleteDistinctAttributeRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.value != rhs.value {return false}
    if lhs.account != rhs.account {return false}
    if lhs.owner != rhs.owner {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Provenance_Attribute_V1_MsgDeleteDistinctAttributeResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MsgDeleteDistinctAttributeResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Provenance_Attribute_V1_MsgDeleteDistinctAttributeResponse, rhs: Provenance_Attribute_V1_MsgDeleteDistinctAttributeResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
