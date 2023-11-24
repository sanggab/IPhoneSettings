//
//  WirelessConnectivityView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/17.
//

import SwiftUI

public struct WirelessConnectivityView: View {
    @EnvironmentObject private var viewModel: ContentViewModel
    
    public var body: some View {
        
        AirplaneView()

        WifiView()
        
        BluetoothView()
        
        CellularView()
        
        HotspotView()
        
        VPNView()
        
    }
}

struct WirelessConnectivityView_Previews: PreviewProvider {
    static var previews: some View {
        WirelessConnectivityView()
    }
}
