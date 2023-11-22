//
//  HotspotView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct HotspotView: View {
    public var body: some View {
        NavigationLink(destination: Text("개인용 핫스팟")) {
            HStack {
                Label("개인용 핫스팟", systemImage: "personalhotspot")
                    .labelStyle(LabelImageStyle(color: .green, size: CGSize(width: 28, height: 28), cornerRadius: 7))
                
                Spacer()
                
                Text("끔")
                    .modifier(TextModifier(foregroundColor: .gray, alignment: .trailing, fontDesign: .rounded))
            }
        }
    }
}

struct HotspotView_Previews: PreviewProvider {
    static var previews: some View {
        HotspotView()
    }
}
