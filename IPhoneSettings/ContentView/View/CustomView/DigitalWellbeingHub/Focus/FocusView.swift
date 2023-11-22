//
//  FocusView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

public struct FocusView: View {
    public var body: some View {
        NavigationLink(destination: Text("집중 모드")) {
            Label("집중 모드", systemImage: "moon.fill")
                .labelStyle(LabelImageStyle(color: .purple, size: CGSize(width: 28, height: 28), cornerRadius: 7))
        }
    }
}

struct FocusView_Previews: PreviewProvider {
    static var previews: some View {
        FocusView()
    }
}
