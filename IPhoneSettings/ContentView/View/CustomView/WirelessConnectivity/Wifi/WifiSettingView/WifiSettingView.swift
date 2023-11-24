//
//  WifiSettingView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

public struct WifiSettingView: View {
    @EnvironmentObject private var viewModel: ContentViewModel
    @State private var changeState: Bool = false
    
    public var body: some View {
        List {
            
            Toggle(isOn: $viewModel.wifiState) {
                HStack {
                    Color.clear
                        .frame(width: 20, height: 20, alignment: .leading)

                    Text("Wi-Fi")
                }
            }
            
            ForEach($viewModel.wifiModel, id: \.self) { model in
                if model.wrappedValue.isConnected {
                    WifiListView(wifiModel: model)
                }
            }
            
            Section("my networks") {
                ForEach($viewModel.wifiModel, id: \.self) { model in
                    if !model.wrappedValue.isConnected && model.wrappedValue.isSelcted {
                        WifiListView(wifiModel: model)
                    }
                }
            }
            
            Section("other networks") {
                ForEach($viewModel.wifiModel, id: \.self) { model in
                    if !model.wrappedValue.isConnected && !model.wrappedValue.isSelcted {
//                        WifiListView(wifiModel: model)
//                            .overlay {
//                                NavigationLink(destination: Text("반갑다")) {
//                                    EmptyView()
//                                }
//                                .opacity(0.0)
//                            }
                        
                        WifiListView(wifiModel: model)
                    }
                }
            }
            
            
//            Section("other networks") {
//                ForEach($viewModel.wifiModel, id: \.self) { model in
//                    if !model.wrappedValue.isConnected && !model.wrappedValue.isSelcted {
//                        Button {
//
//                        } label: {
//                            WifiListView(wifiModel: model)
//                        }
//
//                    }
//                }
//            }
        }
        .navigationTitle("Wi-Fi")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button("Edit") {
            print("Edit")
        })
    }
}

struct WifiSettingView_Previews: PreviewProvider {
    static var previews: some View {
        WifiSettingView()
    }
}

//Group {
//    Form {
//
//        Section {
//            Toggle(isOn: $wifiState) {
//                HStack {
//
//                    Color.clear
//                        .frame(width: 20, height: 20, alignment: .leading)
//
//                    Text("Wi-Fi")
//                }
//            }
//
//            WifiListView(isSelcted: true, wifiName: "YeoboyaCorp-50G", signal: .excellentSignalStrength)
//        }
//
//        Section {
//            MyNetworksView()
//        } header: {
//            Text("My Networks")
//        }
//    }
//}
//.environment(\.defaultMinListRowHeight, 50)
//.navigationTitle("Wi-Fi")
//.navigationBarTitleDisplayMode(.inline)
//.navigationBarItems(trailing: Button("Edit", action: {
//    print("나중에 액션")
//}))
