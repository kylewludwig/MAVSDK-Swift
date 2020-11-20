import Foundation
import RxSwift
import GRPC
import NIO

public class Gimbal {
    private let service: Mavsdk_Rpc_Gimbal_GimbalServiceClient
    private let scheduler: SchedulerType
    private let clientEventLoopGroup: EventLoopGroup

    public convenience init(address: String = "localhost",
                            port: Int32 = 50051,
                            scheduler: SchedulerType = ConcurrentDispatchQueueScheduler(qos: .background)) {
        let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 2)
        let channel = ClientConnection.insecure(group: eventLoopGroup).connect(host: address, port: Int(port))
        let service = Mavsdk_Rpc_Gimbal_GimbalServiceClient(channel: channel)

        self.init(service: service, scheduler: scheduler, eventLoopGroup: eventLoopGroup)
    }

    init(service: Mavsdk_Rpc_Gimbal_GimbalServiceClient, scheduler: SchedulerType, eventLoopGroup: EventLoopGroup) {
        self.service = service
        self.scheduler = scheduler
        self.clientEventLoopGroup = eventLoopGroup
    }

    public struct RuntimeGimbalError: Error {
        public let description: String

        init(_ description: String) {
            self.description = description
        }
    }

    
    public struct GimbalError: Error {
        public let code: Gimbal.GimbalResult.Result
        public let description: String
    }
    

    public enum GimbalMode: Equatable {
        case yawFollow
        case yawLock
        case UNRECOGNIZED(Int)

        internal var rpcGimbalMode: Mavsdk_Rpc_Gimbal_GimbalMode {
            switch self {
            case .yawFollow:
                return .yawFollow
            case .yawLock:
                return .yawLock
            case .UNRECOGNIZED(let i):
                return .UNRECOGNIZED(i)
            }
        }

        internal static func translateFromRpc(_ rpcGimbalMode: Mavsdk_Rpc_Gimbal_GimbalMode) -> GimbalMode {
            switch rpcGimbalMode {
            case .yawFollow:
                return .yawFollow
            case .yawLock:
                return .yawLock
            case .UNRECOGNIZED(let i):
                return .UNRECOGNIZED(i)
            }
        }
    }


    public struct GimbalResult: Equatable {
        public let result: Result
        public let resultStr: String

        
        

        public enum Result: Equatable {
            case unknown
            case success
            case error
            case timeout
            case unsupported
            case UNRECOGNIZED(Int)

            internal var rpcResult: Mavsdk_Rpc_Gimbal_GimbalResult.Result {
                switch self {
                case .unknown:
                    return .unknown
                case .success:
                    return .success
                case .error:
                    return .error
                case .timeout:
                    return .timeout
                case .unsupported:
                    return .unsupported
                case .UNRECOGNIZED(let i):
                    return .UNRECOGNIZED(i)
                }
            }

            internal static func translateFromRpc(_ rpcResult: Mavsdk_Rpc_Gimbal_GimbalResult.Result) -> Result {
                switch rpcResult {
                case .unknown:
                    return .unknown
                case .success:
                    return .success
                case .error:
                    return .error
                case .timeout:
                    return .timeout
                case .unsupported:
                    return .unsupported
                case .UNRECOGNIZED(let i):
                    return .UNRECOGNIZED(i)
                }
            }
        }
        

        public init(result: Result, resultStr: String) {
            self.result = result
            self.resultStr = resultStr
        }

        internal var rpcGimbalResult: Mavsdk_Rpc_Gimbal_GimbalResult {
            var rpcGimbalResult = Mavsdk_Rpc_Gimbal_GimbalResult()
            
                
            rpcGimbalResult.result = result.rpcResult
                
            
            
                
            rpcGimbalResult.resultStr = resultStr
                
            

            return rpcGimbalResult
        }

        internal static func translateFromRpc(_ rpcGimbalResult: Mavsdk_Rpc_Gimbal_GimbalResult) -> GimbalResult {
            return GimbalResult(result: Result.translateFromRpc(rpcGimbalResult.result), resultStr: rpcGimbalResult.resultStr)
        }

        public static func == (lhs: GimbalResult, rhs: GimbalResult) -> Bool {
            return lhs.result == rhs.result
                && lhs.resultStr == rhs.resultStr
        }
    }


    public func setPitchAndYaw(pitchDeg: Float, yawDeg: Float) -> Completable {
        return Completable.create { completable in
            var request = Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest()

            
                
            request.pitchDeg = pitchDeg
                
            
                
            request.yawDeg = yawDeg
                
            

            do {
                
                let response = self.service.setPitchAndYaw(request)

                let result = try response.response.wait().gimbalResult
                if (result.result == Mavsdk_Rpc_Gimbal_GimbalResult.Result.success) {
                    completable(.completed)
                } else {
                    completable(.error(GimbalError(code: GimbalResult.Result.translateFromRpc(result.result), description: result.resultStr)))
                }
                
            } catch {
                completable(.error(error))
            }

            return Disposables.create()
        }
    }

    public func setMode(gimbalMode: GimbalMode) -> Completable {
        return Completable.create { completable in
            var request = Mavsdk_Rpc_Gimbal_SetModeRequest()

            
                
            request.gimbalMode = gimbalMode.rpcGimbalMode
                
            

            do {
                
                let response = self.service.setMode(request)

                let result = try response.response.wait().gimbalResult
                if (result.result == Mavsdk_Rpc_Gimbal_GimbalResult.Result.success) {
                    completable(.completed)
                } else {
                    completable(.error(GimbalError(code: GimbalResult.Result.translateFromRpc(result.result), description: result.resultStr)))
                }
                
            } catch {
                completable(.error(error))
            }

            return Disposables.create()
        }
    }

    public func setRoiLocation(latitudeDeg: Double, longitudeDeg: Double, altitudeM: Float) -> Completable {
        return Completable.create { completable in
            var request = Mavsdk_Rpc_Gimbal_SetRoiLocationRequest()

            
                
            request.latitudeDeg = latitudeDeg
                
            
                
            request.longitudeDeg = longitudeDeg
                
            
                
            request.altitudeM = altitudeM
                
            

            do {
                
                let response = self.service.setRoiLocation(request)

                let result = try response.response.wait().gimbalResult
                if (result.result == Mavsdk_Rpc_Gimbal_GimbalResult.Result.success) {
                    completable(.completed)
                } else {
                    completable(.error(GimbalError(code: GimbalResult.Result.translateFromRpc(result.result), description: result.resultStr)))
                }
                
            } catch {
                completable(.error(error))
            }

            return Disposables.create()
        }
    }
}