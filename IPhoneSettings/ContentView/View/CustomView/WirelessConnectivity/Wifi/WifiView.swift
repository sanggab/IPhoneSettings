//
//  WifiView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct WifiView: View {
    public var body: some View {
        NavigationLink(destination: Text("와이파이다!")) {
            HStack {
                Label("Wi-Fi", systemImage: "wifi")
                    .labelStyle(LabelImageStyle(color: .blue, size: CGSize(width: 28, height: 28), cornerRadius: 7))
                    .font(.headline)

                Spacer()

                Text("심상갑 네트워크-50G")
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
