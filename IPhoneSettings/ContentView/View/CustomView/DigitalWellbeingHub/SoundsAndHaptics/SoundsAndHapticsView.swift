//
//  SoundsAndHapticsView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

public struct SoundsAndHapticsView: View {
    public var body: some View {
        NavigationLink(destination: Text("사운드 및 햅틱")) {
            Label("사운드 및 햅틱", systemImage: "speaker.wave.3.fill")
                .labelStyle(LabelImageStyle(color: .red, size: CGSize(width: 28, height: 28), cornerRadius: 7))
        }
    }
}

struct SoundsAndHapticsView_Previews: PreviewProvider {
    static var previews: some View {
        SoundsAndHapticsView()
    }
}
