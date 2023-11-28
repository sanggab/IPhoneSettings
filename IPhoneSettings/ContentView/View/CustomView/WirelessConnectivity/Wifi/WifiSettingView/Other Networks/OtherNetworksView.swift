//
//  OtherNetworksView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/24.
//

import SwiftUI

struct OtherNetworksView: View {
    @EnvironmentObject private var viewModel: ContentViewModel
    
    var body: some View {
        if viewModel.getWifiModel(type: .other)?.isEmpty == false {
            Section("other networks") {
                ForEach($viewModel.wifiModel.indices, id: \.self) { idx in
                    let model = viewModel.getWifiModel(idx: idx)
                    
                    if !model.isConnected && model.type == .other {
                        WifiListView(idx: idx)
                    }
                }
            }
        }
    }
}

struct OtherNetworksView_Previews: PreviewProvider {
    static var previews: some View {
        OtherNetworksView()
    }
}
