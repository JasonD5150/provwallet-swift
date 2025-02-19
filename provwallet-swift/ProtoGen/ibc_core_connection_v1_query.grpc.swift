//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ibc/core/connection/v1/query.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Query provides defines the gRPC querier service
///
/// Usage: instantiate `Ibc_Core_Connection_V1_QueryClient`, then call methods of this protocol to make API calls.
internal protocol Ibc_Core_Connection_V1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Ibc_Core_Connection_V1_QueryClientInterceptorFactoryProtocol? { get }

  func connection(
    _ request: Ibc_Core_Connection_V1_QueryConnectionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryConnectionRequest, Ibc_Core_Connection_V1_QueryConnectionResponse>

  func connections(
    _ request: Ibc_Core_Connection_V1_QueryConnectionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryConnectionsRequest, Ibc_Core_Connection_V1_QueryConnectionsResponse>

  func clientConnections(
    _ request: Ibc_Core_Connection_V1_QueryClientConnectionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryClientConnectionsRequest, Ibc_Core_Connection_V1_QueryClientConnectionsResponse>

  func connectionClientState(
    _ request: Ibc_Core_Connection_V1_QueryConnectionClientStateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryConnectionClientStateRequest, Ibc_Core_Connection_V1_QueryConnectionClientStateResponse>

  func connectionConsensusState(
    _ request: Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest, Ibc_Core_Connection_V1_QueryConnectionConsensusStateResponse>
}

extension Ibc_Core_Connection_V1_QueryClientProtocol {
  internal var serviceName: String {
    return "ibc.core.connection.v1.Query"
  }

  /// Connection queries an IBC connection end.
  ///
  /// - Parameters:
  ///   - request: Request to send to Connection.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func connection(
    _ request: Ibc_Core_Connection_V1_QueryConnectionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryConnectionRequest, Ibc_Core_Connection_V1_QueryConnectionResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.connection.v1.Query/Connection",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConnectionInterceptors() ?? []
    )
  }

  /// Connections queries all the IBC connections of a chain.
  ///
  /// - Parameters:
  ///   - request: Request to send to Connections.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func connections(
    _ request: Ibc_Core_Connection_V1_QueryConnectionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryConnectionsRequest, Ibc_Core_Connection_V1_QueryConnectionsResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.connection.v1.Query/Connections",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConnectionsInterceptors() ?? []
    )
  }

  /// ClientConnections queries the connection paths associated with a client
  /// state.
  ///
  /// - Parameters:
  ///   - request: Request to send to ClientConnections.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func clientConnections(
    _ request: Ibc_Core_Connection_V1_QueryClientConnectionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryClientConnectionsRequest, Ibc_Core_Connection_V1_QueryClientConnectionsResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.connection.v1.Query/ClientConnections",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeClientConnectionsInterceptors() ?? []
    )
  }

  /// ConnectionClientState queries the client state associated with the
  /// connection.
  ///
  /// - Parameters:
  ///   - request: Request to send to ConnectionClientState.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func connectionClientState(
    _ request: Ibc_Core_Connection_V1_QueryConnectionClientStateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryConnectionClientStateRequest, Ibc_Core_Connection_V1_QueryConnectionClientStateResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.connection.v1.Query/ConnectionClientState",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConnectionClientStateInterceptors() ?? []
    )
  }

  /// ConnectionConsensusState queries the consensus state associated with the
  /// connection.
  ///
  /// - Parameters:
  ///   - request: Request to send to ConnectionConsensusState.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func connectionConsensusState(
    _ request: Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest, Ibc_Core_Connection_V1_QueryConnectionConsensusStateResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.connection.v1.Query/ConnectionConsensusState",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConnectionConsensusStateInterceptors() ?? []
    )
  }
}

internal protocol Ibc_Core_Connection_V1_QueryClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'connection'.
  func makeConnectionInterceptors() -> [ClientInterceptor<Ibc_Core_Connection_V1_QueryConnectionRequest, Ibc_Core_Connection_V1_QueryConnectionResponse>]

  /// - Returns: Interceptors to use when invoking 'connections'.
  func makeConnectionsInterceptors() -> [ClientInterceptor<Ibc_Core_Connection_V1_QueryConnectionsRequest, Ibc_Core_Connection_V1_QueryConnectionsResponse>]

  /// - Returns: Interceptors to use when invoking 'clientConnections'.
  func makeClientConnectionsInterceptors() -> [ClientInterceptor<Ibc_Core_Connection_V1_QueryClientConnectionsRequest, Ibc_Core_Connection_V1_QueryClientConnectionsResponse>]

  /// - Returns: Interceptors to use when invoking 'connectionClientState'.
  func makeConnectionClientStateInterceptors() -> [ClientInterceptor<Ibc_Core_Connection_V1_QueryConnectionClientStateRequest, Ibc_Core_Connection_V1_QueryConnectionClientStateResponse>]

  /// - Returns: Interceptors to use when invoking 'connectionConsensusState'.
  func makeConnectionConsensusStateInterceptors() -> [ClientInterceptor<Ibc_Core_Connection_V1_QueryConnectionConsensusStateRequest, Ibc_Core_Connection_V1_QueryConnectionConsensusStateResponse>]
}

internal final class Ibc_Core_Connection_V1_QueryClient: Ibc_Core_Connection_V1_QueryClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Ibc_Core_Connection_V1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the ibc.core.connection.v1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Ibc_Core_Connection_V1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

