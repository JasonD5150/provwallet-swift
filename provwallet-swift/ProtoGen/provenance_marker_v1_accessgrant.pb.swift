// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: provenance/marker/v1/accessgrant.proto
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

/// Access defines the different types of permissions that a marker supports granting to an address.
public enum Provenance_Marker_V1_Access: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// ACCESS_UNSPECIFIED defines a no-op vote option.
  case unspecified // = 0

  /// ACCESS_MINT is the ability to increase the supply of a marker
  case mint // = 1

  /// ACCESS_BURN is the ability to decrease the supply of the marker using coin held by the marker.
  case burn // = 2

  /// ACCESS_DEPOSIT is the ability to set a marker reference to this marker in the metadata/scopes module
  case deposit // = 3

  /// ACCESS_WITHDRAW is the ability to remove marker references to this marker in from metadata/scopes or
  /// transfer coin from this marker account to another account.
  case withdraw // = 4

  /// ACCESS_DELETE is the ability to move a proposed, finalized or active marker into the cancelled state. This
  /// access also allows cancelled markers to be marked for deletion
  case delete // = 5

  /// ACCESS_ADMIN is the ability to add access grants for accounts to the list of marker permissions.
  case admin // = 6

  /// ACCESS_TRANSFER is the ability to invoke a send operation using the marker module to facilitate exchange.
  /// This access right is only supported on RESTRICTED markers.
  case transfer // = 7
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .mint
    case 2: self = .burn
    case 3: self = .deposit
    case 4: self = .withdraw
    case 5: self = .delete
    case 6: self = .admin
    case 7: self = .transfer
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .mint: return 1
    case .burn: return 2
    case .deposit: return 3
    case .withdraw: return 4
    case .delete: return 5
    case .admin: return 6
    case .transfer: return 7
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Provenance_Marker_V1_Access: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Provenance_Marker_V1_Access] = [
    .unspecified,
    .mint,
    .burn,
    .deposit,
    .withdraw,
    .delete,
    .admin,
    .transfer,
  ]
}

#endif  // swift(>=4.2)

/// AccessGrant associates a colelction of permisssions with an address for delegated marker account control.
public struct Provenance_Marker_V1_AccessGrant {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var address: String = String()

  public var permissions: [Provenance_Marker_V1_Access] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "provenance.marker.v1"

extension Provenance_Marker_V1_Access: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ACCESS_UNSPECIFIED"),
    1: .same(proto: "ACCESS_MINT"),
    2: .same(proto: "ACCESS_BURN"),
    3: .same(proto: "ACCESS_DEPOSIT"),
    4: .same(proto: "ACCESS_WITHDRAW"),
    5: .same(proto: "ACCESS_DELETE"),
    6: .same(proto: "ACCESS_ADMIN"),
    7: .same(proto: "ACCESS_TRANSFER"),
  ]
}

extension Provenance_Marker_V1_AccessGrant: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AccessGrant"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .same(proto: "permissions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 2: try { try decoder.decodeRepeatedEnumField(value: &self.permissions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    if !self.permissions.isEmpty {
      try visitor.visitPackedEnumField(value: self.permissions, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Provenance_Marker_V1_AccessGrant, rhs: Provenance_Marker_V1_AccessGrant) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.permissions != rhs.permissions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
