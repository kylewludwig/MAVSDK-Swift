//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: info.proto
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


/// Usage: instantiate Mavsdk_Rpc_Info_InfoServiceClient, then call methods of this protocol to make API calls.
internal protocol Mavsdk_Rpc_Info_InfoServiceClientProtocol {
  func getFlightInformation(_ request: Mavsdk_Rpc_Info_GetFlightInformationRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_Info_GetFlightInformationRequest, Mavsdk_Rpc_Info_GetFlightInformationResponse>
  func getIdentification(_ request: Mavsdk_Rpc_Info_GetIdentificationRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_Info_GetIdentificationRequest, Mavsdk_Rpc_Info_GetIdentificationResponse>
  func getProduct(_ request: Mavsdk_Rpc_Info_GetProductRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_Info_GetProductRequest, Mavsdk_Rpc_Info_GetProductResponse>
  func getVersion(_ request: Mavsdk_Rpc_Info_GetVersionRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_Info_GetVersionRequest, Mavsdk_Rpc_Info_GetVersionResponse>
}

internal final class Mavsdk_Rpc_Info_InfoServiceClient: GRPCClient, Mavsdk_Rpc_Info_InfoServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the mavsdk.rpc.info.InfoService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  internal init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }

  /// Get flight information of the system.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetFlightInformation.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getFlightInformation(_ request: Mavsdk_Rpc_Info_GetFlightInformationRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_Info_GetFlightInformationRequest, Mavsdk_Rpc_Info_GetFlightInformationResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.info.InfoService/GetFlightInformation",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  /// Get the identification of the system.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetIdentification.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getIdentification(_ request: Mavsdk_Rpc_Info_GetIdentificationRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_Info_GetIdentificationRequest, Mavsdk_Rpc_Info_GetIdentificationResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.info.InfoService/GetIdentification",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  /// Get product information of the system.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetProduct.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getProduct(_ request: Mavsdk_Rpc_Info_GetProductRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_Info_GetProductRequest, Mavsdk_Rpc_Info_GetProductResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.info.InfoService/GetProduct",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  /// Get the version information of the system.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetVersion.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getVersion(_ request: Mavsdk_Rpc_Info_GetVersionRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_Info_GetVersionRequest, Mavsdk_Rpc_Info_GetVersionResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.info.InfoService/GetVersion",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Mavsdk_Rpc_Info_InfoServiceProvider: CallHandlerProvider {
  /// Get flight information of the system.
  func getFlightInformation(request: Mavsdk_Rpc_Info_GetFlightInformationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Info_GetFlightInformationResponse>
  /// Get the identification of the system.
  func getIdentification(request: Mavsdk_Rpc_Info_GetIdentificationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Info_GetIdentificationResponse>
  /// Get product information of the system.
  func getProduct(request: Mavsdk_Rpc_Info_GetProductRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Info_GetProductResponse>
  /// Get the version information of the system.
  func getVersion(request: Mavsdk_Rpc_Info_GetVersionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Info_GetVersionResponse>
}

extension Mavsdk_Rpc_Info_InfoServiceProvider {
  internal var serviceName: String { return "mavsdk.rpc.info.InfoService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "GetFlightInformation":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getFlightInformation(request: request, context: context)
        }
      }

    case "GetIdentification":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getIdentification(request: request, context: context)
        }
      }

    case "GetProduct":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getProduct(request: request, context: context)
        }
      }

    case "GetVersion":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getVersion(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}


// Provides conformance to `GRPCPayload` for request and response messages
extension Mavsdk_Rpc_Info_GetFlightInformationRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Info_GetFlightInformationResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Info_GetIdentificationRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Info_GetIdentificationResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Info_GetProductRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Info_GetProductResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Info_GetVersionRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_Info_GetVersionResponse: GRPCProtobufPayload {}

