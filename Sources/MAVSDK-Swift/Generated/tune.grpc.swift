//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: tune.proto
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
import Foundation
import GRPC
import NIO
import NIOHTTP1
import SwiftProtobuf


/// Usage: instantiate Mavsdk_Rpc_Tune_TuneServiceClient, then call methods of this protocol to make API calls.
internal protocol Mavsdk_Rpc_Tune_TuneServiceClientProtocol {
  func playTune(_ request: Mavsdk_Rpc_Tune_PlayTuneRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_Tune_PlayTuneRequest, Mavsdk_Rpc_Tune_PlayTuneResponse>
}

internal final class Mavsdk_Rpc_Tune_TuneServiceClient: GRPCClient, Mavsdk_Rpc_Tune_TuneServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the mavsdk.rpc.tune.TuneService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  internal init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }

  /// Send a tune to be played by the system.
  ///
  /// - Parameters:
  ///   - request: Request to send to PlayTune.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func playTune(_ request: Mavsdk_Rpc_Tune_PlayTuneRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_Tune_PlayTuneRequest, Mavsdk_Rpc_Tune_PlayTuneResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.tune.TuneService/PlayTune",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Mavsdk_Rpc_Tune_TuneServiceProvider: CallHandlerProvider {
  /// Send a tune to be played by the system.
  func playTune(request: Mavsdk_Rpc_Tune_PlayTuneRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Tune_PlayTuneResponse>
}

extension Mavsdk_Rpc_Tune_TuneServiceProvider {
  internal var serviceName: String { return "mavsdk.rpc.tune.TuneService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "PlayTune":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.playTune(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}


// Provides conformance to `GRPCPayload` for request and response messages
extension Mavsdk_Rpc_Tune_PlayTuneRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Tune_PlayTuneResponse: GRPCProtobufPayload {}

