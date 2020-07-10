//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: param.proto
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


/// Usage: instantiate Mavsdk_Rpc_Param_ParamServiceClient, then call methods of this protocol to make API calls.
internal protocol Mavsdk_Rpc_Param_ParamServiceClientProtocol {
  func getParamInt(_ request: Mavsdk_Rpc_Param_GetParamIntRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_Param_GetParamIntRequest, Mavsdk_Rpc_Param_GetParamIntResponse>
  func setParamInt(_ request: Mavsdk_Rpc_Param_SetParamIntRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_Param_SetParamIntRequest, Mavsdk_Rpc_Param_SetParamIntResponse>
  func getParamFloat(_ request: Mavsdk_Rpc_Param_GetParamFloatRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_Param_GetParamFloatRequest, Mavsdk_Rpc_Param_GetParamFloatResponse>
  func setParamFloat(_ request: Mavsdk_Rpc_Param_SetParamFloatRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_Param_SetParamFloatRequest, Mavsdk_Rpc_Param_SetParamFloatResponse>
}

internal final class Mavsdk_Rpc_Param_ParamServiceClient: GRPCClient, Mavsdk_Rpc_Param_ParamServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the mavsdk.rpc.param.ParamService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  internal init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }

  ///
  /// Get an int parameter.
  ///
  /// If the type is wrong, the result will be `WRONG_TYPE`.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetParamInt.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getParamInt(_ request: Mavsdk_Rpc_Param_GetParamIntRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_Param_GetParamIntRequest, Mavsdk_Rpc_Param_GetParamIntResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.param.ParamService/GetParamInt",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Set an int parameter.
  ///
  /// If the type is wrong, the result will be `WRONG_TYPE`.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetParamInt.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func setParamInt(_ request: Mavsdk_Rpc_Param_SetParamIntRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_Param_SetParamIntRequest, Mavsdk_Rpc_Param_SetParamIntResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.param.ParamService/SetParamInt",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Get a float parameter.
  ///
  /// If the type is wrong, the result will be `WRONG_TYPE`.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetParamFloat.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getParamFloat(_ request: Mavsdk_Rpc_Param_GetParamFloatRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_Param_GetParamFloatRequest, Mavsdk_Rpc_Param_GetParamFloatResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.param.ParamService/GetParamFloat",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Set a float parameter.
  ///
  /// If the type is wrong, the result will be `WRONG_TYPE`.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetParamFloat.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func setParamFloat(_ request: Mavsdk_Rpc_Param_SetParamFloatRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_Param_SetParamFloatRequest, Mavsdk_Rpc_Param_SetParamFloatResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.param.ParamService/SetParamFloat",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Mavsdk_Rpc_Param_ParamServiceProvider: CallHandlerProvider {
  ///
  /// Get an int parameter.
  ///
  /// If the type is wrong, the result will be `WRONG_TYPE`.
  func getParamInt(request: Mavsdk_Rpc_Param_GetParamIntRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Param_GetParamIntResponse>
  ///
  /// Set an int parameter.
  ///
  /// If the type is wrong, the result will be `WRONG_TYPE`.
  func setParamInt(request: Mavsdk_Rpc_Param_SetParamIntRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Param_SetParamIntResponse>
  ///
  /// Get a float parameter.
  ///
  /// If the type is wrong, the result will be `WRONG_TYPE`.
  func getParamFloat(request: Mavsdk_Rpc_Param_GetParamFloatRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Param_GetParamFloatResponse>
  ///
  /// Set a float parameter.
  ///
  /// If the type is wrong, the result will be `WRONG_TYPE`.
  func setParamFloat(request: Mavsdk_Rpc_Param_SetParamFloatRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Param_SetParamFloatResponse>
}

extension Mavsdk_Rpc_Param_ParamServiceProvider {
  internal var serviceName: String { return "mavsdk.rpc.param.ParamService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "GetParamInt":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getParamInt(request: request, context: context)
        }
      }

    case "SetParamInt":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setParamInt(request: request, context: context)
        }
      }

    case "GetParamFloat":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getParamFloat(request: request, context: context)
        }
      }

    case "SetParamFloat":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setParamFloat(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}


// Provides conformance to `GRPCPayload` for request and response messages
extension Mavsdk_Rpc_Param_GetParamIntRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Param_GetParamIntResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Param_SetParamIntRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Param_SetParamIntResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Param_GetParamFloatRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Param_GetParamFloatResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Param_SetParamFloatRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Param_SetParamFloatResponse: GRPCProtobufPayload {}

