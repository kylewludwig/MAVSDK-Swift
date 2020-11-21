//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: failure.proto
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


/// Usage: instantiate Mavsdk_Rpc_Failure_FailureServiceClient, then call methods of this protocol to make API calls.
internal protocol Mavsdk_Rpc_Failure_FailureServiceClientProtocol: GRPCClient {
  func inject(
    _ request: Mavsdk_Rpc_Failure_InjectRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Failure_InjectRequest, Mavsdk_Rpc_Failure_InjectResponse>

}

extension Mavsdk_Rpc_Failure_FailureServiceClientProtocol {

  /// Injects a failure.
  ///
  /// - Parameters:
  ///   - request: Request to send to Inject.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func inject(
    _ request: Mavsdk_Rpc_Failure_InjectRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Failure_InjectRequest, Mavsdk_Rpc_Failure_InjectResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.failure.FailureService/Inject",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

internal final class Mavsdk_Rpc_Failure_FailureServiceClient: Mavsdk_Rpc_Failure_FailureServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the mavsdk.rpc.failure.FailureService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  internal init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Mavsdk_Rpc_Failure_FailureServiceProvider: CallHandlerProvider {
  /// Injects a failure.
  func inject(request: Mavsdk_Rpc_Failure_InjectRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Failure_InjectResponse>
}

extension Mavsdk_Rpc_Failure_FailureServiceProvider {
  internal var serviceName: Substring { return "mavsdk.rpc.failure.FailureService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "Inject":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.inject(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
