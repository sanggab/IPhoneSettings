//
//  WifiModel.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/23.
//

import SwiftUI

@frozen public enum WifiSignal {
    
    /// 매우 강한 신호
    case excellentSignalStrength
    
    /// 좋은 신호
    case goodSignalStrength
    
    /// 어느 정도의 신호
    case fairSignalStrength
    
    /// 약한 신호
    case weakSignalStrength
    
    /// 신호 없음
    case noSignal
}

@frozen public enum ConfigureIPV4 {
    case automatic
    case manual
    case bootp
}

public struct WifiIPV4Address: Hashable {
    public var configureIP: ConfigureIPV4
    public var ipAddress: String
    public var subnetMask: String
    public var router: String
    
    public init(configureIP: ConfigureIPV4 = .automatic,
                ipAddress: String = "",
                subnetMask: String = "",
                router: String = "") {
        self.configureIP = configureIP
        self.ipAddress = ipAddress
        self.subnetMask = subnetMask
        self.router = router
    }
}

@frozen public enum DNSState {
    case automatic
    case manual
}

public struct DNS: Hashable {
    public var state: DNSState
    public var servers: [String]
    
    public init(state: DNSState = .automatic,
                servers: [String] = []) {
        self.state = state
        self.servers = servers
    }
}

@frozen public enum ProxyState {
    case off
    case manual
    case automatic
}

public struct Proxy: Hashable {
    public var state: ProxyState
    
    public init(state: ProxyState = .off) {
        self.state = state
    }
}

public struct WifiPassWord: Hashable {
    public var history: Bool
    public var password: Int
    
    public init(history: Bool = false,
                password: Int = 0) {
        self.history = history
        self.password = password
    }
}

@frozen public enum NetworkType {
    case my
    case other
}

public struct WifiModel: Hashable {
    public var isConnected: Bool
    public var name: String
    public var isProctedWithPassWord: Bool
    public var signal: WifiSignal
    public var detailsInformaiton: WifiDetailsInformation
    public var type: NetworkType
    public var wifiPW: WifiPassWord
    
    public init(isConnected: Bool = false,
                name: String = "",
                isProctedWithPassWord: Bool = false,
                signal: WifiSignal = .excellentSignalStrength,
                detailsInformaiton: WifiDetailsInformation = .init(),
                type: NetworkType = .other,
                wifiPW: WifiPassWord = .init()) {
        self.isConnected = isConnected
        self.name = name
        self.isProctedWithPassWord = isProctedWithPassWord
        self.signal = signal
        self.detailsInformaiton = detailsInformaiton
        self.type = type
        self.wifiPW = wifiPW
    }
    
    
}

public struct WifiDetailsInformation: Hashable {
    public var autoJoin: Bool
    public var password: Int
    public var lowDataMode: Bool
    public var privateWifiAddress: Bool
    public var wifiAddress: String
    public var limitIPAddressTracking: Bool
    public var ipv4Address: WifiIPV4Address
    public var dns: DNS
    public var proxy: Proxy
    
    public init(autoJoin: Bool = false,
                password: Int = 0,
                lowDataMode: Bool = false,
                privateWifiAddress: Bool = false,
                wifiAddress: String = "",
                limitIPAddressTracking: Bool = false,
                ipv4Address: WifiIPV4Address = .init(),
                dns: DNS = .init(),
                proxy: Proxy = .init()) {
        self.autoJoin = autoJoin
        self.password = password
        self.lowDataMode = lowDataMode
        self.privateWifiAddress = privateWifiAddress
        self.wifiAddress = wifiAddress
        self.limitIPAddressTracking = limitIPAddressTracking
        self.ipv4Address = ipv4Address
        self.dns = dns
        self.proxy = proxy
    }
}

