//
//  VPNView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct VPNView: View {
    @ObservedObject public var viewModel: ContentViewModel
    
    public var body: some View {
        Toggle(isOn: $viewModel.vpnState) {
            
            HStack(spacing: 19) {
                Text("VPN")
                    .background(
                        Color.blue
                            .frame(width: 28, height: 28)
                            .cornerRadius(7)
                    )
                    .font(.system(size: 12, weight: .medium))
                    .padding(.leading, 1)
                
                Text("VPN")
                    .font(style: .headline)
            }

            
        }
        .onChange(of: viewModel.vpnState) { newValue in
            viewModel.switchToogleState(type: .vpn, state: newValue)
        }
    }
}

struct VPNView_Previews: PreviewProvider {
    static var previews: some View {
        VPNView(viewModel: .init())
    }
}
