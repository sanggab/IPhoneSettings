//
//  ScreenTimeview.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

public struct ScreenTimeview: View {
    public var body: some View {
        NavigationLink(destination: Text("스크린 타임")) {
            Label("스크린 타임", systemImage: "hourglass")
                .labelStyle(LabelImageStyle(color: .purple, size: CGSize(width: 28, height: 28), cornerRadius: 7))
        }
    }
}

struct ScreenTimeview_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTimeview()
    }
}
