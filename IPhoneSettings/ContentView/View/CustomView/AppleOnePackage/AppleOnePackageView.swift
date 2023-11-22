//
//  AppleOnePackageView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct AppleOnePackageView: View {
    public var body: some View {
        
        PromotionView()
        
        SoftwareUpdateView()
        
        iCloudView()
        
    }
}

struct AppleOnePackageView_Previews: PreviewProvider {
    static var previews: some View {
        AppleOnePackageView()
    }
}
