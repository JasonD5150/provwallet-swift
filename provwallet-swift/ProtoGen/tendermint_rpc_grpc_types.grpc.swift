//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: tendermint/rpc/grpc/types.proto
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


/// Usage: instantiate `Tendermint_Rpc_Grpc_BroadcastAPIClient`, then call methods of this protocol to make API calls.
internal protocol Tendermint_Rpc_Grpc_BroadcastAPIClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Tendermint_Rpc_Grpc_BroadcastAPIClientInterceptorFactoryProtocol? { get }

  func ping(
    _ request: Tendermint_Rpc_Grpc_RequestPing,
    callOptions: CallOptions?
  ) -> UnaryCall<Tendermint_Rpc_Grpc_RequestPing, Tendermint_Rpc_Grpc_ResponsePing>

  func broadcastTx(
    _ request: Tendermint_Rpc_Grpc_RequestBroadcastTx,
    callOptions: CallOptions?
  ) -> UnaryCall<Tendermint_Rpc_Grpc_RequestBroadcastTx, Tendermint_Rpc_Grpc_ResponseBroadcastTx>
}

extension Tendermint_Rpc_Grpc_BroadcastAPIClientProtocol {
  internal var serviceName: String {
    return "tendermint.rpc.grpc.BroadcastAPI"
  }

  /// Unary call to Ping
  ///
  /// - Parameters:
  ///   - request: Request to send to Ping.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func ping(
    _ request: Tendermint_Rpc_Grpc_RequestPing,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Tendermint_Rpc_Grpc_RequestPing, Tendermint_Rpc_Grpc_ResponsePing> {
    return self.makeUnaryCall(
      path: "/tendermint.rpc.grpc.BroadcastAPI/Ping",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePingInterceptors() ?? []
    )
  }

  /// Unary call to BroadcastTx
  ///
  /// - Parameters:
  ///   - request: Request to send to BroadcastTx.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func broadcastTx(
    _ request: Tendermint_Rpc_Grpc_RequestBroadcastTx,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Tendermint_Rpc_Grpc_RequestBroadcastTx, Tendermint_Rpc_Grpc_ResponseBroadcastTx> {
    return self.makeUnaryCall(
      path: "/tendermint.rpc.grpc.BroadcastAPI/BroadcastTx",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeBroadcastTxInterceptors() ?? []
    )
  }
}

internal protocol Tendermint_Rpc_Grpc_BroadcastAPIClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'ping'.
  func makePingInterceptors() -> [ClientInterceptor<Tendermint_Rpc_Grpc_RequestPing, Tendermint_Rpc_Grpc_ResponsePing>]

  /// - Returns: Interceptors to use when invoking 'broadcastTx'.
  func makeBroadcastTxInterceptors() -> [ClientInterceptor<Tendermint_Rpc_Grpc_RequestBroadcastTx, Tendermint_Rpc_Grpc_ResponseBroadcastTx>]
}

internal final class Tendermint_Rpc_Grpc_BroadcastAPIClient: Tendermint_Rpc_Grpc_BroadcastAPIClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Tendermint_Rpc_Grpc_BroadcastAPIClientInterceptorFactoryProtocol?

  /// Creates a client for the tendermint.rpc.grpc.BroadcastAPI service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Tendermint_Rpc_Grpc_BroadcastAPIClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

