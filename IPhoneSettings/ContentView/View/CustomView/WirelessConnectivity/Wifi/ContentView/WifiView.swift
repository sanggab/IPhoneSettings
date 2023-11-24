//
//  WifiView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct WifiView: View {
    @EnvironmentObject private var viewModel: ContentViewModel
    
    public var body: some View {
        NavigationLink(destination: WifiSettingView().environmentObject(viewModel)) {
            HStack {
                Label("Wi-Fi", systemImage: "wifi")
                    .labelStyle(LabelImageStyle(color: .blue, size: CGSize(width: 28, height: 28), cornerRadius: 7))
                    .font(.headline)

                Spacer()

                Text(viewModel.getConnectedWifiModel()?.name ?? "")
                    .modifier(TextModifier(foregroundColor: .gray, alignment: .trailing, fontDesign: .rounded))
            }
        }
    }
}

struct WifiView_Previews: PreviewProvider {
    static var previews: some View {
        WifiView()
    }
}
