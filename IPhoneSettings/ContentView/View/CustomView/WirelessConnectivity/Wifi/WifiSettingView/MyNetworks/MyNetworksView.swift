//
//  MyNetworksView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

public struct MyNetworksView: View {
    @EnvironmentObject private var viewModel: ContentViewModel
    
    public var body: some View {
        if viewModel.getWifiModel(type: .my)?.isEmpty == false {
            Section("my networks") {
                ForEach($viewModel.wifiModel.indices, id: \.self) { idx in
                    let model = viewModel.getWifiModel(idx: idx)
                    
                    if !model.isConnected && model.type == .my {
                        WifiListView(idx: idx)
                    }
                }
            }
        }
        
    }
}

struct MyNetworksView_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworksView()
    }
}
