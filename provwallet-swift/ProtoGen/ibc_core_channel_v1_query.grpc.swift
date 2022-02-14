//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ibc/core/channel/v1/query.proto
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
/// Usage: instantiate `Ibc_Core_Channel_V1_QueryClient`, then call methods of this protocol to make API calls.
internal protocol Ibc_Core_Channel_V1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Ibc_Core_Channel_V1_QueryClientInterceptorFactoryProtocol? { get }

  func channel(
    _ request: Ibc_Core_Channel_V1_QueryChannelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryChannelRequest, Ibc_Core_Channel_V1_QueryChannelResponse>

  func channels(
    _ request: Ibc_Core_Channel_V1_QueryChannelsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryChannelsRequest, Ibc_Core_Channel_V1_QueryChannelsResponse>

  func connectionChannels(
    _ request: Ibc_Core_Channel_V1_QueryConnectionChannelsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryConnectionChannelsRequest, Ibc_Core_Channel_V1_QueryConnectionChannelsResponse>

  func channelClientState(
    _ request: Ibc_Core_Channel_V1_QueryChannelClientStateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryChannelClientStateRequest, Ibc_Core_Channel_V1_QueryChannelClientStateResponse>

  func channelConsensusState(
    _ request: Ibc_Core_Channel_V1_QueryChannelConsensusStateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryChannelConsensusStateRequest, Ibc_Core_Channel_V1_QueryChannelConsensusStateResponse>

  func packetCommitment(
    _ request: Ibc_Core_Channel_V1_QueryPacketCommitmentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketCommitmentRequest, Ibc_Core_Channel_V1_QueryPacketCommitmentResponse>

  func packetCommitments(
    _ request: Ibc_Core_Channel_V1_QueryPacketCommitmentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketCommitmentsRequest, Ibc_Core_Channel_V1_QueryPacketCommitmentsResponse>

  func packetReceipt(
    _ request: Ibc_Core_Channel_V1_QueryPacketReceiptRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketReceiptRequest, Ibc_Core_Channel_V1_QueryPacketReceiptResponse>

  func packetAcknowledgement(
    _ request: Ibc_Core_Channel_V1_QueryPacketAcknowledgementRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketAcknowledgementRequest, Ibc_Core_Channel_V1_QueryPacketAcknowledgementResponse>

  func packetAcknowledgements(
    _ request: Ibc_Core_Channel_V1_QueryPacketAcknowledgementsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketAcknowledgementsRequest, Ibc_Core_Channel_V1_QueryPacketAcknowledgementsResponse>

  func unreceivedPackets(
    _ request: Ibc_Core_Channel_V1_QueryUnreceivedPacketsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryUnreceivedPacketsRequest, Ibc_Core_Channel_V1_QueryUnreceivedPacketsResponse>

  func unreceivedAcks(
    _ request: Ibc_Core_Channel_V1_QueryUnreceivedAcksRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryUnreceivedAcksRequest, Ibc_Core_Channel_V1_QueryUnreceivedAcksResponse>

  func nextSequenceReceive(
    _ request: Ibc_Core_Channel_V1_QueryNextSequenceReceiveRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryNextSequenceReceiveRequest, Ibc_Core_Channel_V1_QueryNextSequenceReceiveResponse>
}

extension Ibc_Core_Channel_V1_QueryClientProtocol {
  internal var serviceName: String {
    return "ibc.core.channel.v1.Query"
  }

  /// Channel queries an IBC Channel.
  ///
  /// - Parameters:
  ///   - request: Request to send to Channel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func channel(
    _ request: Ibc_Core_Channel_V1_QueryChannelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryChannelRequest, Ibc_Core_Channel_V1_QueryChannelResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/Channel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeChannelInterceptors() ?? []
    )
  }

  /// Channels queries all the IBC channels of a chain.
  ///
  /// - Parameters:
  ///   - request: Request to send to Channels.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func channels(
    _ request: Ibc_Core_Channel_V1_QueryChannelsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryChannelsRequest, Ibc_Core_Channel_V1_QueryChannelsResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/Channels",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeChannelsInterceptors() ?? []
    )
  }

  /// ConnectionChannels queries all the channels associated with a connection
  /// end.
  ///
  /// - Parameters:
  ///   - request: Request to send to ConnectionChannels.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func connectionChannels(
    _ request: Ibc_Core_Channel_V1_QueryConnectionChannelsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryConnectionChannelsRequest, Ibc_Core_Channel_V1_QueryConnectionChannelsResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/ConnectionChannels",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeConnectionChannelsInterceptors() ?? []
    )
  }

  /// ChannelClientState queries for the client state for the channel associated
  /// with the provided channel identifiers.
  ///
  /// - Parameters:
  ///   - request: Request to send to ChannelClientState.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func channelClientState(
    _ request: Ibc_Core_Channel_V1_QueryChannelClientStateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryChannelClientStateRequest, Ibc_Core_Channel_V1_QueryChannelClientStateResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/ChannelClientState",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeChannelClientStateInterceptors() ?? []
    )
  }

  /// ChannelConsensusState queries for the consensus state for the channel
  /// associated with the provided channel identifiers.
  ///
  /// - Parameters:
  ///   - request: Request to send to ChannelConsensusState.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func channelConsensusState(
    _ request: Ibc_Core_Channel_V1_QueryChannelConsensusStateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryChannelConsensusStateRequest, Ibc_Core_Channel_V1_QueryChannelConsensusStateResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/ChannelConsensusState",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeChannelConsensusStateInterceptors() ?? []
    )
  }

  /// PacketCommitment queries a stored packet commitment hash.
  ///
  /// - Parameters:
  ///   - request: Request to send to PacketCommitment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func packetCommitment(
    _ request: Ibc_Core_Channel_V1_QueryPacketCommitmentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketCommitmentRequest, Ibc_Core_Channel_V1_QueryPacketCommitmentResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/PacketCommitment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePacketCommitmentInterceptors() ?? []
    )
  }

  /// PacketCommitments returns all the packet commitments hashes associated
  /// with a channel.
  ///
  /// - Parameters:
  ///   - request: Request to send to PacketCommitments.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func packetCommitments(
    _ request: Ibc_Core_Channel_V1_QueryPacketCommitmentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketCommitmentsRequest, Ibc_Core_Channel_V1_QueryPacketCommitmentsResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/PacketCommitments",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePacketCommitmentsInterceptors() ?? []
    )
  }

  /// PacketReceipt queries if a given packet sequence has been received on the
  /// queried chain
  ///
  /// - Parameters:
  ///   - request: Request to send to PacketReceipt.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func packetReceipt(
    _ request: Ibc_Core_Channel_V1_QueryPacketReceiptRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketReceiptRequest, Ibc_Core_Channel_V1_QueryPacketReceiptResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/PacketReceipt",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePacketReceiptInterceptors() ?? []
    )
  }

  /// PacketAcknowledgement queries a stored packet acknowledgement hash.
  ///
  /// - Parameters:
  ///   - request: Request to send to PacketAcknowledgement.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func packetAcknowledgement(
    _ request: Ibc_Core_Channel_V1_QueryPacketAcknowledgementRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketAcknowledgementRequest, Ibc_Core_Channel_V1_QueryPacketAcknowledgementResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/PacketAcknowledgement",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePacketAcknowledgementInterceptors() ?? []
    )
  }

  /// PacketAcknowledgements returns all the packet acknowledgements associated
  /// with a channel.
  ///
  /// - Parameters:
  ///   - request: Request to send to PacketAcknowledgements.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func packetAcknowledgements(
    _ request: Ibc_Core_Channel_V1_QueryPacketAcknowledgementsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryPacketAcknowledgementsRequest, Ibc_Core_Channel_V1_QueryPacketAcknowledgementsResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/PacketAcknowledgements",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePacketAcknowledgementsInterceptors() ?? []
    )
  }

  /// UnreceivedPackets returns all the unreceived IBC packets associated with a
  /// channel and sequences.
  ///
  /// - Parameters:
  ///   - request: Request to send to UnreceivedPackets.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func unreceivedPackets(
    _ request: Ibc_Core_Channel_V1_QueryUnreceivedPacketsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryUnreceivedPacketsRequest, Ibc_Core_Channel_V1_QueryUnreceivedPacketsResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/UnreceivedPackets",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUnreceivedPacketsInterceptors() ?? []
    )
  }

  /// UnreceivedAcks returns all the unreceived IBC acknowledgements associated
  /// with a channel and sequences.
  ///
  /// - Parameters:
  ///   - request: Request to send to UnreceivedAcks.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func unreceivedAcks(
    _ request: Ibc_Core_Channel_V1_QueryUnreceivedAcksRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryUnreceivedAcksRequest, Ibc_Core_Channel_V1_QueryUnreceivedAcksResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/UnreceivedAcks",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUnreceivedAcksInterceptors() ?? []
    )
  }

  /// NextSequenceReceive returns the next receive sequence for a given channel.
  ///
  /// - Parameters:
  ///   - request: Request to send to NextSequenceReceive.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func nextSequenceReceive(
    _ request: Ibc_Core_Channel_V1_QueryNextSequenceReceiveRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ibc_Core_Channel_V1_QueryNextSequenceReceiveRequest, Ibc_Core_Channel_V1_QueryNextSequenceReceiveResponse> {
    return self.makeUnaryCall(
      path: "/ibc.core.channel.v1.Query/NextSequenceReceive",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeNextSequenceReceiveInterceptors() ?? []
    )
  }
}

internal protocol Ibc_Core_Channel_V1_QueryClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'channel'.
  func makeChannelInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryChannelRequest, Ibc_Core_Channel_V1_QueryChannelResponse>]

  /// - Returns: Interceptors to use when invoking 'channels'.
  func makeChannelsInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryChannelsRequest, Ibc_Core_Channel_V1_QueryChannelsResponse>]

  /// - Returns: Interceptors to use when invoking 'connectionChannels'.
  func makeConnectionChannelsInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryConnectionChannelsRequest, Ibc_Core_Channel_V1_QueryConnectionChannelsResponse>]

  /// - Returns: Interceptors to use when invoking 'channelClientState'.
  func makeChannelClientStateInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryChannelClientStateRequest, Ibc_Core_Channel_V1_QueryChannelClientStateResponse>]

  /// - Returns: Interceptors to use when invoking 'channelConsensusState'.
  func makeChannelConsensusStateInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryChannelConsensusStateRequest, Ibc_Core_Channel_V1_QueryChannelConsensusStateResponse>]

  /// - Returns: Interceptors to use when invoking 'packetCommitment'.
  func makePacketCommitmentInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryPacketCommitmentRequest, Ibc_Core_Channel_V1_QueryPacketCommitmentResponse>]

  /// - Returns: Interceptors to use when invoking 'packetCommitments'.
  func makePacketCommitmentsInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryPacketCommitmentsRequest, Ibc_Core_Channel_V1_QueryPacketCommitmentsResponse>]

  /// - Returns: Interceptors to use when invoking 'packetReceipt'.
  func makePacketReceiptInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryPacketReceiptRequest, Ibc_Core_Channel_V1_QueryPacketReceiptResponse>]

  /// - Returns: Interceptors to use when invoking 'packetAcknowledgement'.
  func makePacketAcknowledgementInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryPacketAcknowledgementRequest, Ibc_Core_Channel_V1_QueryPacketAcknowledgementResponse>]

  /// - Returns: Interceptors to use when invoking 'packetAcknowledgements'.
  func makePacketAcknowledgementsInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryPacketAcknowledgementsRequest, Ibc_Core_Channel_V1_QueryPacketAcknowledgementsResponse>]

  /// - Returns: Interceptors to use when invoking 'unreceivedPackets'.
  func makeUnreceivedPacketsInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryUnreceivedPacketsRequest, Ibc_Core_Channel_V1_QueryUnreceivedPacketsResponse>]

  /// - Returns: Interceptors to use when invoking 'unreceivedAcks'.
  func makeUnreceivedAcksInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryUnreceivedAcksRequest, Ibc_Core_Channel_V1_QueryUnreceivedAcksResponse>]

  /// - Returns: Interceptors to use when invoking 'nextSequenceReceive'.
  func makeNextSequenceReceiveInterceptors() -> [ClientInterceptor<Ibc_Core_Channel_V1_QueryNextSequenceReceiveRequest, Ibc_Core_Channel_V1_QueryNextSequenceReceiveResponse>]
}

internal final class Ibc_Core_Channel_V1_QueryClient: Ibc_Core_Channel_V1_QueryClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Ibc_Core_Channel_V1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the ibc.core.channel.v1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Ibc_Core_Channel_V1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

