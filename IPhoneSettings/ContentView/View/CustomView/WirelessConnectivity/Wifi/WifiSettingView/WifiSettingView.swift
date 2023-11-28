//
//  WifiSettingView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

public struct WifiSettingView: View {
    @EnvironmentObject private var viewModel: ContentViewModel
    
    public var body: some View {
        List {

            Toggle(isOn: $viewModel.wifiState) {
                HStack {
                    Color.clear
                        .frame(width: 20, height: 20, alignment: .leading)

                    Text("Wi-Fi")
                }
            }

            ForEach($viewModel.wifiModel.indices, id: \.self) { idx in
                let model = viewModel.wifiModel[idx]
                
                if model.isConnected {
                    WifiListView(idx: idx)
                }
            }

            MyNetworksView()
            
            OtherNetworksView()

        }
        .navigationTitle("Wi-Fi")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button("Edit") {
            print("Edit")
        })
    }
}

struct WifiSettingView_Previews: PreviewProvider {
    static var previews: some View {
        WifiSettingView()
    }
}
