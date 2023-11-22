//
//  WirelessConnectivityView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/17.
//

import SwiftUI

public struct WirelessConnectivityView: View {
    @ObservedObject public var viewModel: ContentViewModel
    
    public var body: some View {
        
        AirplaneView(viewModel: viewModel)

        WifiView()
        
        BluetoothView()
        
        CellularView()
        
        HotspotView()
        
        VPNView(viewModel: viewModel)
    }
}

struct WirelessConnectivityView_Previews: PreviewProvider {
    static var previews: some View {
        WirelessConnectivityView(viewModel: .init())
    }
}
