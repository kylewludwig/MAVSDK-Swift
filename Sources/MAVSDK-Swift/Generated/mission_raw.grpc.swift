//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: mission_raw.proto
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


/// Usage: instantiate Mavsdk_Rpc_MissionRaw_MissionRawServiceClient, then call methods of this protocol to make API calls.
internal protocol Mavsdk_Rpc_MissionRaw_MissionRawServiceClientProtocol {
  func uploadMission(_ request: Mavsdk_Rpc_MissionRaw_UploadMissionRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_MissionRaw_UploadMissionRequest, Mavsdk_Rpc_MissionRaw_UploadMissionResponse>
  func cancelMissionUpload(_ request: Mavsdk_Rpc_MissionRaw_CancelMissionUploadRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_MissionRaw_CancelMissionUploadRequest, Mavsdk_Rpc_MissionRaw_CancelMissionUploadResponse>
  func downloadMission(_ request: Mavsdk_Rpc_MissionRaw_DownloadMissionRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_MissionRaw_DownloadMissionRequest, Mavsdk_Rpc_MissionRaw_DownloadMissionResponse>
  func cancelMissionDownload(_ request: Mavsdk_Rpc_MissionRaw_CancelMissionDownloadRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_MissionRaw_CancelMissionDownloadRequest, Mavsdk_Rpc_MissionRaw_CancelMissionDownloadResponse>
  func startMission(_ request: Mavsdk_Rpc_MissionRaw_StartMissionRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_MissionRaw_StartMissionRequest, Mavsdk_Rpc_MissionRaw_StartMissionResponse>
  func pauseMission(_ request: Mavsdk_Rpc_MissionRaw_PauseMissionRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_MissionRaw_PauseMissionRequest, Mavsdk_Rpc_MissionRaw_PauseMissionResponse>
  func clearMission(_ request: Mavsdk_Rpc_MissionRaw_ClearMissionRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_MissionRaw_ClearMissionRequest, Mavsdk_Rpc_MissionRaw_ClearMissionResponse>
  func setCurrentMissionItem(_ request: Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemRequest, callOptions: CallOptions?) -> UnaryCall<Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemRequest, Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemResponse>
  func subscribeMissionProgress(_ request: Mavsdk_Rpc_MissionRaw_SubscribeMissionProgressRequest, callOptions: CallOptions?, handler: @escaping (Mavsdk_Rpc_MissionRaw_MissionProgressResponse) -> Void) -> ServerStreamingCall<Mavsdk_Rpc_MissionRaw_SubscribeMissionProgressRequest, Mavsdk_Rpc_MissionRaw_MissionProgressResponse>
  func subscribeMissionChanged(_ request: Mavsdk_Rpc_MissionRaw_SubscribeMissionChangedRequest, callOptions: CallOptions?, handler: @escaping (Mavsdk_Rpc_MissionRaw_MissionChangedResponse) -> Void) -> ServerStreamingCall<Mavsdk_Rpc_MissionRaw_SubscribeMissionChangedRequest, Mavsdk_Rpc_MissionRaw_MissionChangedResponse>
}

internal final class Mavsdk_Rpc_MissionRaw_MissionRawServiceClient: GRPCClient, Mavsdk_Rpc_MissionRaw_MissionRawServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the mavsdk.rpc.mission_raw.MissionRawService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  internal init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }

  ///
  /// Upload a list of raw mission items to the system.
  ///
  /// The raw mission items are uploaded to a drone. Once uploaded the mission
  /// can be started and executed even if the connection is lost.
  ///
  /// - Parameters:
  ///   - request: Request to send to UploadMission.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func uploadMission(_ request: Mavsdk_Rpc_MissionRaw_UploadMissionRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_MissionRaw_UploadMissionRequest, Mavsdk_Rpc_MissionRaw_UploadMissionResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/UploadMission",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Cancel an ongoing mission upload.
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelMissionUpload.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func cancelMissionUpload(_ request: Mavsdk_Rpc_MissionRaw_CancelMissionUploadRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_MissionRaw_CancelMissionUploadRequest, Mavsdk_Rpc_MissionRaw_CancelMissionUploadResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/CancelMissionUpload",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Download a list of raw mission items from the system (asynchronous).
  ///
  /// - Parameters:
  ///   - request: Request to send to DownloadMission.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func downloadMission(_ request: Mavsdk_Rpc_MissionRaw_DownloadMissionRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_MissionRaw_DownloadMissionRequest, Mavsdk_Rpc_MissionRaw_DownloadMissionResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/DownloadMission",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Cancel an ongoing mission download.
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelMissionDownload.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func cancelMissionDownload(_ request: Mavsdk_Rpc_MissionRaw_CancelMissionDownloadRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_MissionRaw_CancelMissionDownloadRequest, Mavsdk_Rpc_MissionRaw_CancelMissionDownloadResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/CancelMissionDownload",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Start the mission.
  ///
  /// A mission must be uploaded to the vehicle before this can be called.
  ///
  /// - Parameters:
  ///   - request: Request to send to StartMission.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func startMission(_ request: Mavsdk_Rpc_MissionRaw_StartMissionRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_MissionRaw_StartMissionRequest, Mavsdk_Rpc_MissionRaw_StartMissionResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/StartMission",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Pause the mission.
  ///
  /// Pausing the mission puts the vehicle into
  /// [HOLD mode](https://docs.px4.io/en/flight_modes/hold.html).
  /// A multicopter should just hover at the spot while a fixedwing vehicle should loiter
  /// around the location where it paused.
  ///
  /// - Parameters:
  ///   - request: Request to send to PauseMission.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func pauseMission(_ request: Mavsdk_Rpc_MissionRaw_PauseMissionRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_MissionRaw_PauseMissionRequest, Mavsdk_Rpc_MissionRaw_PauseMissionResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/PauseMission",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Clear the mission saved on the vehicle.
  ///
  /// - Parameters:
  ///   - request: Request to send to ClearMission.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func clearMission(_ request: Mavsdk_Rpc_MissionRaw_ClearMissionRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_MissionRaw_ClearMissionRequest, Mavsdk_Rpc_MissionRaw_ClearMissionResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/ClearMission",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Sets the raw mission item index to go to.
  ///
  /// By setting the current index to 0, the mission is restarted from the beginning. If it is set
  /// to a specific index of a raw mission item, the mission will be set to this item.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetCurrentMissionItem.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func setCurrentMissionItem(_ request: Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemRequest, callOptions: CallOptions? = nil) -> UnaryCall<Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemRequest, Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemResponse> {
    return self.makeUnaryCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/SetCurrentMissionItem",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

  ///
  /// Subscribe to mission progress updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubscribeMissionProgress.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func subscribeMissionProgress(_ request: Mavsdk_Rpc_MissionRaw_SubscribeMissionProgressRequest, callOptions: CallOptions? = nil, handler: @escaping (Mavsdk_Rpc_MissionRaw_MissionProgressResponse) -> Void) -> ServerStreamingCall<Mavsdk_Rpc_MissionRaw_SubscribeMissionProgressRequest, Mavsdk_Rpc_MissionRaw_MissionProgressResponse> {
    return self.makeServerStreamingCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/SubscribeMissionProgress",
                                        request: request,
                                        callOptions: callOptions ?? self.defaultCallOptions,
                                        handler: handler)
  }

  ///*
  /// Subscribes to mission changed.
  ///
  /// This notification can be used to be informed if a ground station has
  /// been uploaded or changed by a ground station or companion computer.
  ///
  /// @param callback Callback to notify about change.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubscribeMissionChanged.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func subscribeMissionChanged(_ request: Mavsdk_Rpc_MissionRaw_SubscribeMissionChangedRequest, callOptions: CallOptions? = nil, handler: @escaping (Mavsdk_Rpc_MissionRaw_MissionChangedResponse) -> Void) -> ServerStreamingCall<Mavsdk_Rpc_MissionRaw_SubscribeMissionChangedRequest, Mavsdk_Rpc_MissionRaw_MissionChangedResponse> {
    return self.makeServerStreamingCall(path: "/mavsdk.rpc.mission_raw.MissionRawService/SubscribeMissionChanged",
                                        request: request,
                                        callOptions: callOptions ?? self.defaultCallOptions,
                                        handler: handler)
  }

}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Mavsdk_Rpc_MissionRaw_MissionRawServiceProvider: CallHandlerProvider {
  ///
  /// Upload a list of raw mission items to the system.
  ///
  /// The raw mission items are uploaded to a drone. Once uploaded the mission
  /// can be started and executed even if the connection is lost.
  func uploadMission(request: Mavsdk_Rpc_MissionRaw_UploadMissionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_MissionRaw_UploadMissionResponse>
  ///
  /// Cancel an ongoing mission upload.
  func cancelMissionUpload(request: Mavsdk_Rpc_MissionRaw_CancelMissionUploadRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_MissionRaw_CancelMissionUploadResponse>
  ///
  /// Download a list of raw mission items from the system (asynchronous).
  func downloadMission(request: Mavsdk_Rpc_MissionRaw_DownloadMissionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_MissionRaw_DownloadMissionResponse>
  ///
  /// Cancel an ongoing mission download.
  func cancelMissionDownload(request: Mavsdk_Rpc_MissionRaw_CancelMissionDownloadRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_MissionRaw_CancelMissionDownloadResponse>
  ///
  /// Start the mission.
  ///
  /// A mission must be uploaded to the vehicle before this can be called.
  func startMission(request: Mavsdk_Rpc_MissionRaw_StartMissionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_MissionRaw_StartMissionResponse>
  ///
  /// Pause the mission.
  ///
  /// Pausing the mission puts the vehicle into
  /// [HOLD mode](https://docs.px4.io/en/flight_modes/hold.html).
  /// A multicopter should just hover at the spot while a fixedwing vehicle should loiter
  /// around the location where it paused.
  func pauseMission(request: Mavsdk_Rpc_MissionRaw_PauseMissionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_MissionRaw_PauseMissionResponse>
  ///
  /// Clear the mission saved on the vehicle.
  func clearMission(request: Mavsdk_Rpc_MissionRaw_ClearMissionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_MissionRaw_ClearMissionResponse>
  ///
  /// Sets the raw mission item index to go to.
  ///
  /// By setting the current index to 0, the mission is restarted from the beginning. If it is set
  /// to a specific index of a raw mission item, the mission will be set to this item.
  func setCurrentMissionItem(request: Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemResponse>
  ///
  /// Subscribe to mission progress updates.
  func subscribeMissionProgress(request: Mavsdk_Rpc_MissionRaw_SubscribeMissionProgressRequest, context: StreamingResponseCallContext<Mavsdk_Rpc_MissionRaw_MissionProgressResponse>) -> EventLoopFuture<GRPCStatus>
  ///*
  /// Subscribes to mission changed.
  ///
  /// This notification can be used to be informed if a ground station has
  /// been uploaded or changed by a ground station or companion computer.
  ///
  /// @param callback Callback to notify about change.
  func subscribeMissionChanged(request: Mavsdk_Rpc_MissionRaw_SubscribeMissionChangedRequest, context: StreamingResponseCallContext<Mavsdk_Rpc_MissionRaw_MissionChangedResponse>) -> EventLoopFuture<GRPCStatus>
}

extension Mavsdk_Rpc_MissionRaw_MissionRawServiceProvider {
  internal var serviceName: String { return "mavsdk.rpc.mission_raw.MissionRawService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "UploadMission":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.uploadMission(request: request, context: context)
        }
      }

    case "CancelMissionUpload":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.cancelMissionUpload(request: request, context: context)
        }
      }

    case "DownloadMission":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.downloadMission(request: request, context: context)
        }
      }

    case "CancelMissionDownload":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.cancelMissionDownload(request: request, context: context)
        }
      }

    case "StartMission":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.startMission(request: request, context: context)
        }
      }

    case "PauseMission":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.pauseMission(request: request, context: context)
        }
      }

    case "ClearMission":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.clearMission(request: request, context: context)
        }
      }

    case "SetCurrentMissionItem":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setCurrentMissionItem(request: request, context: context)
        }
      }

    case "SubscribeMissionProgress":
      return ServerStreamingCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.subscribeMissionProgress(request: request, context: context)
        }
      }

    case "SubscribeMissionChanged":
      return ServerStreamingCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.subscribeMissionChanged(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}


// Provides conformance to `GRPCPayload` for request and response messages
extension Mavsdk_Rpc_MissionRaw_UploadMissionRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_UploadMissionResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_CancelMissionUploadRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_CancelMissionUploadResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_DownloadMissionRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_DownloadMissionResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_CancelMissionDownloadRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_CancelMissionDownloadResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_StartMissionRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_StartMissionResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_PauseMissionRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_PauseMissionResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_ClearMissionRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_ClearMissionResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_SetCurrentMissionItemResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_SubscribeMissionProgressRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_MissionProgressResponse: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_SubscribeMissionChangedRequest: GRPCProtobufPayload {}
extension Mavsdk_Rpc_MissionRaw_MissionChangedResponse: GRPCProtobufPayload {}

