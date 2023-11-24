//
//  AirplaneView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct AirplaneView: View {
    @EnvironmentObject private var viewModel: ContentViewModel
    
    public var body: some View {
        HStack {
            
            Toggle(isOn: $viewModel.airplaneState) {
                
                Label("에어플레인 모드", systemImage: "airplane")
                    .labelStyle(LabelImageStyle(color: .orange, size: CGSize(width: 28, height: 28), cornerRadius: 7))
                
            }
            .onChange(of: viewModel.airplaneState) { newValue in
                viewModel.switchToogleState(type: .airplane, state: newValue)
            }
            
        }
        
    }
}

struct AirplaneView_Previews: PreviewProvider {
    static var previews: some View {
        AirplaneView()
    }
}
