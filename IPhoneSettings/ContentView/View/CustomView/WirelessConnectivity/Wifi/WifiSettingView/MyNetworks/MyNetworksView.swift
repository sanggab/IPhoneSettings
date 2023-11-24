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
        ForEach($viewModel.wifiModel, id: \.self) { model in
            if !model.wrappedValue.isConnected && model.wrappedValue.isSelcted {
                WifiListView(wifiModel: model)
            }
        }
    }
}

struct MyNetworksView_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworksView()
    }
}
