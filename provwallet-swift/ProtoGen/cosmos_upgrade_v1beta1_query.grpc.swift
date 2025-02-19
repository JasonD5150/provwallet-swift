//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: cosmos/upgrade/v1beta1/query.proto
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


/// Query defines the gRPC upgrade querier service.
///
/// Usage: instantiate `Cosmos_Upgrade_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
internal protocol Cosmos_Upgrade_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cosmos_Upgrade_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func currentPlan(
    _ request: Cosmos_Upgrade_V1beta1_QueryCurrentPlanRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Upgrade_V1beta1_QueryCurrentPlanRequest, Cosmos_Upgrade_V1beta1_QueryCurrentPlanResponse>

  func appliedPlan(
    _ request: Cosmos_Upgrade_V1beta1_QueryAppliedPlanRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Upgrade_V1beta1_QueryAppliedPlanRequest, Cosmos_Upgrade_V1beta1_QueryAppliedPlanResponse>

  func upgradedConsensusState(
    _ request: Cosmos_Upgrade_V1beta1_QueryUpgradedConsensusStateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Upgrade_V1beta1_QueryUpgradedConsensusStateRequest, Cosmos_Upgrade_V1beta1_QueryUpgradedConsensusStateResponse>

  func moduleVersions(
    _ request: Cosmos_Upgrade_V1beta1_QueryModuleVersionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cosmos_Upgrade_V1beta1_QueryModuleVersionsRequest, Cosmos_Upgrade_V1beta1_QueryModuleVersionsResponse>
}

extension Cosmos_Upgrade_V1beta1_QueryClientProtocol {
  internal var serviceName: String {
    return "cosmos.upgrade.v1beta1.Query"
  }

  /// CurrentPlan queries the current upgrade plan.
  ///
  /// - Parameters:
  ///   - request: Request to send to CurrentPlan.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func currentPlan(
    _ request: Cosmos_Upgrade_V1beta1_QueryCurrentPlanRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Upgrade_V1beta1_QueryCurrentPlanRequest, Cosmos_Upgrade_V1beta1_QueryCurrentPlanResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.upgrade.v1beta1.Query/CurrentPlan",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCurrentPlanInterceptors() ?? []
    )
  }

  /// AppliedPlan queries a previously applied upgrade plan by its name.
  ///
  /// - Parameters:
  ///   - request: Request to send to AppliedPlan.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func appliedPlan(
    _ request: Cosmos_Upgrade_V1beta1_QueryAppliedPlanRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Upgrade_V1beta1_QueryAppliedPlanRequest, Cosmos_Upgrade_V1beta1_QueryAppliedPlanResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.upgrade.v1beta1.Query/AppliedPlan",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAppliedPlanInterceptors() ?? []
    )
  }

  /// UpgradedConsensusState queries the consensus state that will serve
  /// as a trusted kernel for the next version of this chain. It will only be
  /// stored at the last height of this chain.
  /// UpgradedConsensusState RPC not supported with legacy querier
  /// This rpc is deprecated now that IBC has its own replacement
  /// (https://github.com/cosmos/ibc-go/blob/2c880a22e9f9cc75f62b527ca94aa75ce1106001/proto/ibc/core/client/v1/query.proto#L54)
  ///
  /// - Parameters:
  ///   - request: Request to send to UpgradedConsensusState.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func upgradedConsensusState(
    _ request: Cosmos_Upgrade_V1beta1_QueryUpgradedConsensusStateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Upgrade_V1beta1_QueryUpgradedConsensusStateRequest, Cosmos_Upgrade_V1beta1_QueryUpgradedConsensusStateResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.upgrade.v1beta1.Query/UpgradedConsensusState",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpgradedConsensusStateInterceptors() ?? []
    )
  }

  /// ModuleVersions queries the list of module versions from state.
  ///
  /// Since: cosmos-sdk 0.43
  ///
  /// - Parameters:
  ///   - request: Request to send to ModuleVersions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func moduleVersions(
    _ request: Cosmos_Upgrade_V1beta1_QueryModuleVersionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cosmos_Upgrade_V1beta1_QueryModuleVersionsRequest, Cosmos_Upgrade_V1beta1_QueryModuleVersionsResponse> {
    return self.makeUnaryCall(
      path: "/cosmos.upgrade.v1beta1.Query/ModuleVersions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeModuleVersionsInterceptors() ?? []
    )
  }
}

internal protocol Cosmos_Upgrade_V1beta1_QueryClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'currentPlan'.
  func makeCurrentPlanInterceptors() -> [ClientInterceptor<Cosmos_Upgrade_V1beta1_QueryCurrentPlanRequest, Cosmos_Upgrade_V1beta1_QueryCurrentPlanResponse>]

  /// - Returns: Interceptors to use when invoking 'appliedPlan'.
  func makeAppliedPlanInterceptors() -> [ClientInterceptor<Cosmos_Upgrade_V1beta1_QueryAppliedPlanRequest, Cosmos_Upgrade_V1beta1_QueryAppliedPlanResponse>]

  /// - Returns: Interceptors to use when invoking 'upgradedConsensusState'.
  func makeUpgradedConsensusStateInterceptors() -> [ClientInterceptor<Cosmos_Upgrade_V1beta1_QueryUpgradedConsensusStateRequest, Cosmos_Upgrade_V1beta1_QueryUpgradedConsensusStateResponse>]

  /// - Returns: Interceptors to use when invoking 'moduleVersions'.
  func makeModuleVersionsInterceptors() -> [ClientInterceptor<Cosmos_Upgrade_V1beta1_QueryModuleVersionsRequest, Cosmos_Upgrade_V1beta1_QueryModuleVersionsResponse>]
}

internal final class Cosmos_Upgrade_V1beta1_QueryClient: Cosmos_Upgrade_V1beta1_QueryClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Cosmos_Upgrade_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the cosmos.upgrade.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cosmos_Upgrade_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

