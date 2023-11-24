//
//  OtherNetworksView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/24.
//

import SwiftUI

struct OtherNetworksView: View {
    @EnvironmentObject private var viewMoel: ContentViewModel
    
    var body: some View {
        ForEach($viewMoel.wifiModel, id: \.self) { model in
            if !model.wrappedValue.isConnected && !model.wrappedValue.isSelcted {
                WifiListView(wifiModel: model)
            }
        }
    }
}

struct OtherNetworksView_Previews: PreviewProvider {
    static var previews: some View {
        OtherNetworksView()
    }
}
