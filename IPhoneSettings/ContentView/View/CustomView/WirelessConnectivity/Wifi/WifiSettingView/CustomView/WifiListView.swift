//
//  WifiListView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

@frozen public enum WifiSignal {
    
    /// 매우 강한 신호
    case excellentSignalStrength
    
    /// 좋은 신호
    case goodSignalStrength
    
    /// 어느 정도의 신호
    case fairSignalStrength
    
    /// 약한 신호
    case weakSignalStrength
    
    /// 신호 없음
    case noSignal
}

public struct WifiListView: View {
    @Binding var wifiModel: WifiModel
    @State private var highlightState: Bool = false
    @GestureState private var longState: Bool = false
    
    public var body: some View {
        HStack {
            
            Color.clear
                .overlay {
                    if wifiModel.isConnected {
                        
                        Image(systemname: "checkmark", withConfiguration: UIImage.SymbolConfiguration(weight: .semibold))
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                        
                    }
                }
                .frame(width: 20, height: 20, alignment: .leading)
            
            Text(wifiModel.name)
                .font(design: .rounded)
            
            Spacer()
            
            if wifiModel.isProctedWithPassWord {
                Image(systemName: "lock.fill")
                    .imageScale(.small)
            }
            
            Image(systemName: "wifi")
                .imageScale(.small)
            
            Image(systemName: "info.circle")
                .imageScale(.large)
                .foregroundColor(.blue)
                .onTapGesture {
                    print("정보로 들어가자")
                }
        }
        .overlay(content: {
            NavigationLink(destination: Text("ㅇㅇ"), isActive: $highlightState) {
                EmptyView()
            }
            .opacity(0.0)
        })
        .contentShape(Rectangle())
        .onTapGesture {
            print("dd")
            if !wifiModel.isConnected {
                wifiModel.isConnected = true
                wifiModel.isSelcted = true
            }
        }
        
//        .contentShape(Rectangle())
//        .simultaneousGesture(
//            LongPressGesture()
//                .updating($longState, body: { value, state, transaction in
//                    print("value -> \(value)")
//                    print("state -> \(state)")
//                    state = value
//                }))
//        .listRowBackground(longState ? Color.gray.opacity(0.5) : nil)
    }
}

struct WifiListView_Previews: PreviewProvider {
    static var previews: some View {
        WifiListView(wifiModel: .constant(.init()))
    }
}
