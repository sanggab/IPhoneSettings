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
    @Published public var vpnState: Bool = false
    
    @Published public var searchText: String = ""
    
    public func switchToogleState(type: ToogleType, state: Bool) {
        switch type {
        case .airplane:
            self.airplaneState = state
        case .vpn:
            self.vpnState = state
        }
    }
}
