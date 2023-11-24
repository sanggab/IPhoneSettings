//
//  WifiModel.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/23.
//

import SwiftUI

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

public struct WifiModel: Hashable {
    public var isConnected: Bool
    public var name: String
    public var isProctedWithPassWord: Bool
    public var signal: WifiSignal
    public var detailsInformaiton: WifiDetailsInformation
    public var isSelcted: Bool
    
    public init(isConnected: Bool = false,
         name: String = "",
         isProctedWithPassWord: Bool = false,
         signal: WifiSignal = .excellentSignalStrength,
         detailsInformaiton: WifiDetailsInformation = .init(),
         isSelcted: Bool = false) {
        self.isConnected = isConnected
        self.name = name
        self.isProctedWithPassWord = isProctedWithPassWord
        self.signal = signal
        self.detailsInformaiton = detailsInformaiton
        self.isSelcted = isSelcted
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

