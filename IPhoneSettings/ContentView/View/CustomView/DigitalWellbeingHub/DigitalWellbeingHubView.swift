//
//  DigitalWellbeingHubView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

public struct DigitalWellbeingHubView: View {
    public var body: some View {
        NotificationsView()
        
        SoundsAndHapticsView()
        
        FocusView()
        
        ScreenTimeview()
    }
}

struct DigitalWellbeingHubView_Previews: PreviewProvider {
    static var previews: some View {
        DigitalWellbeingHubView()
    }
}
