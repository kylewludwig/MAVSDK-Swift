//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: camera.proto
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


/// Usage: instantiate Mavsdk_Rpc_Camera_CameraServiceClient, then call methods of this protocol to make API calls.
internal protocol Mavsdk_Rpc_Camera_CameraServiceClientProtocol: GRPCClient {
  func takePhoto(
    _ request: Mavsdk_Rpc_Camera_TakePhotoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_TakePhotoRequest, Mavsdk_Rpc_Camera_TakePhotoResponse>

  func startPhotoInterval(
    _ request: Mavsdk_Rpc_Camera_StartPhotoIntervalRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StartPhotoIntervalRequest, Mavsdk_Rpc_Camera_StartPhotoIntervalResponse>

  func stopPhotoInterval(
    _ request: Mavsdk_Rpc_Camera_StopPhotoIntervalRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StopPhotoIntervalRequest, Mavsdk_Rpc_Camera_StopPhotoIntervalResponse>

  func startVideo(
    _ request: Mavsdk_Rpc_Camera_StartVideoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StartVideoRequest, Mavsdk_Rpc_Camera_StartVideoResponse>

  func stopVideo(
    _ request: Mavsdk_Rpc_Camera_StopVideoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StopVideoRequest, Mavsdk_Rpc_Camera_StopVideoResponse>

  func startVideoStreaming(
    _ request: Mavsdk_Rpc_Camera_StartVideoStreamingRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StartVideoStreamingRequest, Mavsdk_Rpc_Camera_StartVideoStreamingResponse>

  func stopVideoStreaming(
    _ request: Mavsdk_Rpc_Camera_StopVideoStreamingRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StopVideoStreamingRequest, Mavsdk_Rpc_Camera_StopVideoStreamingResponse>

  func setMode(
    _ request: Mavsdk_Rpc_Camera_SetModeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_SetModeRequest, Mavsdk_Rpc_Camera_SetModeResponse>

  func subscribeMode(
    _ request: Mavsdk_Rpc_Camera_SubscribeModeRequest,
    callOptions: CallOptions?,
    handler: @escaping (Mavsdk_Rpc_Camera_ModeResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeModeRequest, Mavsdk_Rpc_Camera_ModeResponse>

  func subscribeInformation(
    _ request: Mavsdk_Rpc_Camera_SubscribeInformationRequest,
    callOptions: CallOptions?,
    handler: @escaping (Mavsdk_Rpc_Camera_InformationResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeInformationRequest, Mavsdk_Rpc_Camera_InformationResponse>

  func subscribeVideoStreamInfo(
    _ request: Mavsdk_Rpc_Camera_SubscribeVideoStreamInfoRequest,
    callOptions: CallOptions?,
    handler: @escaping (Mavsdk_Rpc_Camera_VideoStreamInfoResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeVideoStreamInfoRequest, Mavsdk_Rpc_Camera_VideoStreamInfoResponse>

  func subscribeCaptureInfo(
    _ request: Mavsdk_Rpc_Camera_SubscribeCaptureInfoRequest,
    callOptions: CallOptions?,
    handler: @escaping (Mavsdk_Rpc_Camera_CaptureInfoResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeCaptureInfoRequest, Mavsdk_Rpc_Camera_CaptureInfoResponse>

  func subscribeStatus(
    _ request: Mavsdk_Rpc_Camera_SubscribeStatusRequest,
    callOptions: CallOptions?,
    handler: @escaping (Mavsdk_Rpc_Camera_StatusResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeStatusRequest, Mavsdk_Rpc_Camera_StatusResponse>

  func subscribeCurrentSettings(
    _ request: Mavsdk_Rpc_Camera_SubscribeCurrentSettingsRequest,
    callOptions: CallOptions?,
    handler: @escaping (Mavsdk_Rpc_Camera_CurrentSettingsResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeCurrentSettingsRequest, Mavsdk_Rpc_Camera_CurrentSettingsResponse>

  func subscribePossibleSettingOptions(
    _ request: Mavsdk_Rpc_Camera_SubscribePossibleSettingOptionsRequest,
    callOptions: CallOptions?,
    handler: @escaping (Mavsdk_Rpc_Camera_PossibleSettingOptionsResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribePossibleSettingOptionsRequest, Mavsdk_Rpc_Camera_PossibleSettingOptionsResponse>

  func setSetting(
    _ request: Mavsdk_Rpc_Camera_SetSettingRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_SetSettingRequest, Mavsdk_Rpc_Camera_SetSettingResponse>

  func getSetting(
    _ request: Mavsdk_Rpc_Camera_GetSettingRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_GetSettingRequest, Mavsdk_Rpc_Camera_GetSettingResponse>

  func formatStorage(
    _ request: Mavsdk_Rpc_Camera_FormatStorageRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_Camera_FormatStorageRequest, Mavsdk_Rpc_Camera_FormatStorageResponse>

}

extension Mavsdk_Rpc_Camera_CameraServiceClientProtocol {

  ///
  /// Take one photo.
  ///
  /// - Parameters:
  ///   - request: Request to send to TakePhoto.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func takePhoto(
    _ request: Mavsdk_Rpc_Camera_TakePhotoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_TakePhotoRequest, Mavsdk_Rpc_Camera_TakePhotoResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/TakePhoto",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Start photo timelapse with a given interval.
  ///
  /// - Parameters:
  ///   - request: Request to send to StartPhotoInterval.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func startPhotoInterval(
    _ request: Mavsdk_Rpc_Camera_StartPhotoIntervalRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StartPhotoIntervalRequest, Mavsdk_Rpc_Camera_StartPhotoIntervalResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/StartPhotoInterval",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Stop a running photo timelapse.
  ///
  /// - Parameters:
  ///   - request: Request to send to StopPhotoInterval.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func stopPhotoInterval(
    _ request: Mavsdk_Rpc_Camera_StopPhotoIntervalRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StopPhotoIntervalRequest, Mavsdk_Rpc_Camera_StopPhotoIntervalResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/StopPhotoInterval",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Start a video recording.
  ///
  /// - Parameters:
  ///   - request: Request to send to StartVideo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func startVideo(
    _ request: Mavsdk_Rpc_Camera_StartVideoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StartVideoRequest, Mavsdk_Rpc_Camera_StartVideoResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/StartVideo",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Stop a running video recording.
  ///
  /// - Parameters:
  ///   - request: Request to send to StopVideo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func stopVideo(
    _ request: Mavsdk_Rpc_Camera_StopVideoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StopVideoRequest, Mavsdk_Rpc_Camera_StopVideoResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/StopVideo",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Start video streaming.
  ///
  /// - Parameters:
  ///   - request: Request to send to StartVideoStreaming.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func startVideoStreaming(
    _ request: Mavsdk_Rpc_Camera_StartVideoStreamingRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StartVideoStreamingRequest, Mavsdk_Rpc_Camera_StartVideoStreamingResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/StartVideoStreaming",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Stop current video streaming.
  ///
  /// - Parameters:
  ///   - request: Request to send to StopVideoStreaming.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func stopVideoStreaming(
    _ request: Mavsdk_Rpc_Camera_StopVideoStreamingRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_StopVideoStreamingRequest, Mavsdk_Rpc_Camera_StopVideoStreamingResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/StopVideoStreaming",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Set camera mode.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetMode.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func setMode(
    _ request: Mavsdk_Rpc_Camera_SetModeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_SetModeRequest, Mavsdk_Rpc_Camera_SetModeResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/SetMode",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Subscribe to camera mode updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubscribeMode.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func subscribeMode(
    _ request: Mavsdk_Rpc_Camera_SubscribeModeRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Mavsdk_Rpc_Camera_ModeResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeModeRequest, Mavsdk_Rpc_Camera_ModeResponse> {
    return self.makeServerStreamingCall(
      path: "/mavsdk.rpc.camera.CameraService/SubscribeMode",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  ///
  /// Subscribe to camera information updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubscribeInformation.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func subscribeInformation(
    _ request: Mavsdk_Rpc_Camera_SubscribeInformationRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Mavsdk_Rpc_Camera_InformationResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeInformationRequest, Mavsdk_Rpc_Camera_InformationResponse> {
    return self.makeServerStreamingCall(
      path: "/mavsdk.rpc.camera.CameraService/SubscribeInformation",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  ///
  /// Subscribe to video stream info updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubscribeVideoStreamInfo.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func subscribeVideoStreamInfo(
    _ request: Mavsdk_Rpc_Camera_SubscribeVideoStreamInfoRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Mavsdk_Rpc_Camera_VideoStreamInfoResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeVideoStreamInfoRequest, Mavsdk_Rpc_Camera_VideoStreamInfoResponse> {
    return self.makeServerStreamingCall(
      path: "/mavsdk.rpc.camera.CameraService/SubscribeVideoStreamInfo",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  ///
  /// Subscribe to capture info updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubscribeCaptureInfo.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func subscribeCaptureInfo(
    _ request: Mavsdk_Rpc_Camera_SubscribeCaptureInfoRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Mavsdk_Rpc_Camera_CaptureInfoResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeCaptureInfoRequest, Mavsdk_Rpc_Camera_CaptureInfoResponse> {
    return self.makeServerStreamingCall(
      path: "/mavsdk.rpc.camera.CameraService/SubscribeCaptureInfo",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  ///
  /// Subscribe to camera status updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubscribeStatus.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func subscribeStatus(
    _ request: Mavsdk_Rpc_Camera_SubscribeStatusRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Mavsdk_Rpc_Camera_StatusResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeStatusRequest, Mavsdk_Rpc_Camera_StatusResponse> {
    return self.makeServerStreamingCall(
      path: "/mavsdk.rpc.camera.CameraService/SubscribeStatus",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  ///
  /// Get the list of current camera settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubscribeCurrentSettings.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func subscribeCurrentSettings(
    _ request: Mavsdk_Rpc_Camera_SubscribeCurrentSettingsRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Mavsdk_Rpc_Camera_CurrentSettingsResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribeCurrentSettingsRequest, Mavsdk_Rpc_Camera_CurrentSettingsResponse> {
    return self.makeServerStreamingCall(
      path: "/mavsdk.rpc.camera.CameraService/SubscribeCurrentSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  ///
  /// Get the list of settings that can be changed.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubscribePossibleSettingOptions.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func subscribePossibleSettingOptions(
    _ request: Mavsdk_Rpc_Camera_SubscribePossibleSettingOptionsRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Mavsdk_Rpc_Camera_PossibleSettingOptionsResponse) -> Void
  ) -> ServerStreamingCall<Mavsdk_Rpc_Camera_SubscribePossibleSettingOptionsRequest, Mavsdk_Rpc_Camera_PossibleSettingOptionsResponse> {
    return self.makeServerStreamingCall(
      path: "/mavsdk.rpc.camera.CameraService/SubscribePossibleSettingOptions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  ///
  /// Set a setting to some value.
  ///
  /// Only setting_id of setting and option_id of option needs to be set.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetSetting.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func setSetting(
    _ request: Mavsdk_Rpc_Camera_SetSettingRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_SetSettingRequest, Mavsdk_Rpc_Camera_SetSettingResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/SetSetting",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Get a setting.
  ///
  /// Only setting_id of setting needs to be set.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetSetting.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getSetting(
    _ request: Mavsdk_Rpc_Camera_GetSettingRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_GetSettingRequest, Mavsdk_Rpc_Camera_GetSettingResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/GetSetting",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  ///
  /// Format storage (e.g. SD card) in camera.
  ///
  /// This will delete all content of the camera storage!
  ///
  /// - Parameters:
  ///   - request: Request to send to FormatStorage.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func formatStorage(
    _ request: Mavsdk_Rpc_Camera_FormatStorageRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_Camera_FormatStorageRequest, Mavsdk_Rpc_Camera_FormatStorageResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.camera.CameraService/FormatStorage",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

internal final class Mavsdk_Rpc_Camera_CameraServiceClient: Mavsdk_Rpc_Camera_CameraServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions

  /// Creates a client for the mavsdk.rpc.camera.CameraService service.
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
internal protocol Mavsdk_Rpc_Camera_CameraServiceProvider: CallHandlerProvider {
  ///
  /// Take one photo.
  func takePhoto(request: Mavsdk_Rpc_Camera_TakePhotoRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_TakePhotoResponse>
  ///
  /// Start photo timelapse with a given interval.
  func startPhotoInterval(request: Mavsdk_Rpc_Camera_StartPhotoIntervalRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_StartPhotoIntervalResponse>
  ///
  /// Stop a running photo timelapse.
  func stopPhotoInterval(request: Mavsdk_Rpc_Camera_StopPhotoIntervalRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_StopPhotoIntervalResponse>
  ///
  /// Start a video recording.
  func startVideo(request: Mavsdk_Rpc_Camera_StartVideoRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_StartVideoResponse>
  ///
  /// Stop a running video recording.
  func stopVideo(request: Mavsdk_Rpc_Camera_StopVideoRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_StopVideoResponse>
  ///
  /// Start video streaming.
  func startVideoStreaming(request: Mavsdk_Rpc_Camera_StartVideoStreamingRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_StartVideoStreamingResponse>
  ///
  /// Stop current video streaming.
  func stopVideoStreaming(request: Mavsdk_Rpc_Camera_StopVideoStreamingRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_StopVideoStreamingResponse>
  ///
  /// Set camera mode.
  func setMode(request: Mavsdk_Rpc_Camera_SetModeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_SetModeResponse>
  ///
  /// Subscribe to camera mode updates.
  func subscribeMode(request: Mavsdk_Rpc_Camera_SubscribeModeRequest, context: StreamingResponseCallContext<Mavsdk_Rpc_Camera_ModeResponse>) -> EventLoopFuture<GRPCStatus>
  ///
  /// Subscribe to camera information updates.
  func subscribeInformation(request: Mavsdk_Rpc_Camera_SubscribeInformationRequest, context: StreamingResponseCallContext<Mavsdk_Rpc_Camera_InformationResponse>) -> EventLoopFuture<GRPCStatus>
  ///
  /// Subscribe to video stream info updates.
  func subscribeVideoStreamInfo(request: Mavsdk_Rpc_Camera_SubscribeVideoStreamInfoRequest, context: StreamingResponseCallContext<Mavsdk_Rpc_Camera_VideoStreamInfoResponse>) -> EventLoopFuture<GRPCStatus>
  ///
  /// Subscribe to capture info updates.
  func subscribeCaptureInfo(request: Mavsdk_Rpc_Camera_SubscribeCaptureInfoRequest, context: StreamingResponseCallContext<Mavsdk_Rpc_Camera_CaptureInfoResponse>) -> EventLoopFuture<GRPCStatus>
  ///
  /// Subscribe to camera status updates.
  func subscribeStatus(request: Mavsdk_Rpc_Camera_SubscribeStatusRequest, context: StreamingResponseCallContext<Mavsdk_Rpc_Camera_StatusResponse>) -> EventLoopFuture<GRPCStatus>
  ///
  /// Get the list of current camera settings.
  func subscribeCurrentSettings(request: Mavsdk_Rpc_Camera_SubscribeCurrentSettingsRequest, context: StreamingResponseCallContext<Mavsdk_Rpc_Camera_CurrentSettingsResponse>) -> EventLoopFuture<GRPCStatus>
  ///
  /// Get the list of settings that can be changed.
  func subscribePossibleSettingOptions(request: Mavsdk_Rpc_Camera_SubscribePossibleSettingOptionsRequest, context: StreamingResponseCallContext<Mavsdk_Rpc_Camera_PossibleSettingOptionsResponse>) -> EventLoopFuture<GRPCStatus>
  ///
  /// Set a setting to some value.
  ///
  /// Only setting_id of setting and option_id of option needs to be set.
  func setSetting(request: Mavsdk_Rpc_Camera_SetSettingRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_SetSettingResponse>
  ///
  /// Get a setting.
  ///
  /// Only setting_id of setting needs to be set.
  func getSetting(request: Mavsdk_Rpc_Camera_GetSettingRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_GetSettingResponse>
  ///
  /// Format storage (e.g. SD card) in camera.
  ///
  /// This will delete all content of the camera storage!
  func formatStorage(request: Mavsdk_Rpc_Camera_FormatStorageRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_Camera_FormatStorageResponse>
}

extension Mavsdk_Rpc_Camera_CameraServiceProvider {
  internal var serviceName: Substring { return "mavsdk.rpc.camera.CameraService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "TakePhoto":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.takePhoto(request: request, context: context)
        }
      }

    case "StartPhotoInterval":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.startPhotoInterval(request: request, context: context)
        }
      }

    case "StopPhotoInterval":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.stopPhotoInterval(request: request, context: context)
        }
      }

    case "StartVideo":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.startVideo(request: request, context: context)
        }
      }

    case "StopVideo":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.stopVideo(request: request, context: context)
        }
      }

    case "StartVideoStreaming":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.startVideoStreaming(request: request, context: context)
        }
      }

    case "StopVideoStreaming":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.stopVideoStreaming(request: request, context: context)
        }
      }

    case "SetMode":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setMode(request: request, context: context)
        }
      }

    case "SubscribeMode":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.subscribeMode(request: request, context: context)
        }
      }

    case "SubscribeInformation":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.subscribeInformation(request: request, context: context)
        }
      }

    case "SubscribeVideoStreamInfo":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.subscribeVideoStreamInfo(request: request, context: context)
        }
      }

    case "SubscribeCaptureInfo":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.subscribeCaptureInfo(request: request, context: context)
        }
      }

    case "SubscribeStatus":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.subscribeStatus(request: request, context: context)
        }
      }

    case "SubscribeCurrentSettings":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.subscribeCurrentSettings(request: request, context: context)
        }
      }

    case "SubscribePossibleSettingOptions":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.subscribePossibleSettingOptions(request: request, context: context)
        }
      }

    case "SetSetting":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setSetting(request: request, context: context)
        }
      }

    case "GetSetting":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getSetting(request: request, context: context)
        }
      }

    case "FormatStorage":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.formatStorage(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
