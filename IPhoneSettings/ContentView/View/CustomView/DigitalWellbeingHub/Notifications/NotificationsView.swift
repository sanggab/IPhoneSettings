//
//  NotificationsView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

public struct NotificationsView: View {
    public var body: some View {
        NavigationLink(destination: Text("알림")) {
            Label("알림", systemImage: "bell.badge.fill")
                .labelStyle(LabelImageStyle(color: .red, size: CGSize(width: 28, height: 28), cornerRadius: 7))
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
