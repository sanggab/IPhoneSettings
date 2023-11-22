//
//  PromotionView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct PromotionView: View {
    public var body: some View {
        NavigationLink {
            Text("프로모션 드가자")
        } label: {
            
            Text("Apple Arcade 3개월 무료 체험")
        }

    }
}

struct PromotionView_Previews: PreviewProvider {
    static var previews: some View {
        PromotionView()
    }
}
