//
//  ContentViewModel.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/17.
//

import SwiftUI

public class ContentViewModel: ObservableObject {
    @Published var isExposureNoti: Bool = true
    
    func switchNotifiState(state: Bool) {
        isExposureNoti = state
    }
}
