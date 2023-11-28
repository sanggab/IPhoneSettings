//
//  ContentViewModel.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/17.
//

import SwiftUI

@frozen public enum ToogleType {
    case airplane
    case vpn
}

public class ContentViewModel: ObservableObject {
    @Published public var isExposureNoti: Bool = true
    @Published public var airplaneState: Bool = false
    @Published public var vpnState: Bool = true
    
    @Published public var searchText: String = ""
    
    @Published public var wifiState: Bool = true
    @Published public var wifiModel: [WifiModel] = []
    
    public init() {
        wifiModel = self.makeWifiModel()
    }
    
    public func switchToogleState(type: ToogleType, state: Bool) {
        switch type {
        case .airplane:
            self.airplaneState = state
        case .vpn:
            self.vpnState = state
        }
    }
}

extension ContentViewModel {
    
    public func getConnectedWifiModel() -> WifiModel? {
        return self.wifiModel.first(where: { $0.isConnected })
    }
    
    public func getWifiModel(type: NetworkType) -> [WifiModel]? {
        return self.wifiModel.filter({ $0.type == type })
    }
    
    private func makeWifiModel() -> [WifiModel] {
        
        return [
            WifiModel(isConnected: true, name: "KaPPa-Hotspot", isProctedWithPassWord: true, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .my, wifiPW: .init(history: true, password: 000000)),
            
            WifiModel(isConnected: false, name: "Gab's Kitchen", isProctedWithPassWord: true, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .other,
                      wifiPW: .init(history: false, password: 11223344)),
            
            WifiModel(isConnected: false, name: "LostArk", isProctedWithPassWord: true, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .other,
                      wifiPW: .init(history: false, password: 11223344)),
            
            WifiModel(isConnected: false, name: "SimSangGabEthernet", isProctedWithPassWord: true, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .other, wifiPW: .init(history: false, password: 11223344)),
            
            WifiModel(isConnected: false, name: "KaPPa-Guest", isProctedWithPassWord: false, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .other,
                      wifiPW: .init(history: true, password: 0)),
            
            WifiModel(isConnected: false, name: "KaPPa Free Wifi Zone", isProctedWithPassWord: false, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .other, wifiPW: .init(history: true, password: 0)),
            
            WifiModel(isConnected: false, name: "Free_Gab_Zone", isProctedWithPassWord: false, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .my,
                      wifiPW: .init(history: true, password: 0)),
            
            WifiModel(isConnected: false, name: "Gab-Guest", isProctedWithPassWord: false, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .other,
                      wifiPW: .init(history: true, password: 0)),
            
            WifiModel(isConnected: false, name: "Gab's Playground", isProctedWithPassWord: true, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .other,
                      wifiPW: .init(history: false, password: 960817)),
            
            WifiModel(isConnected: false, name: "KaPPa-Football Manager", isProctedWithPassWord: true, signal: .excellentSignalStrength, detailsInformaiton: .init(), type: .my, wifiPW: .init(history: true, password: 135792468))
        ]
    }
    
    public func getWifiModel(idx: Int) -> WifiModel {
        return self.wifiModel[idx]
    }
    
    public func newConnectedWifi(idx: Int) {
        self.wifiModel = self.wifiModel.map { model in
            var newModel = model
            
            newModel.isConnected = false
            
            if model == self.getWifiModel(idx: idx) {
                newModel.isConnected = true
                newModel.type = .my
                newModel.wifiPW.history = true
            }
            
            return newModel
        }
    }
}
