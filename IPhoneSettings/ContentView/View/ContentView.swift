//
//  ContentView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/17.
//

import SwiftUI

public struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    @State private var hinice: Bool = false
    
    public var body: some View {
        NavigationView {
            ZStack {
                Group {
                    Form {
                        Section {
                            MyInfoView(viewModel: viewModel)
                        }
                        .padding(.vertical, -6)
                        
                        Section {
                            AppleOnePackageView()
                        } footer: {
                            Text("최근 구입한 Apple 기기에 포함되어 있습니다. 기기를 활성화한 후 90일 이내에 무료 체험을 시작하세요")
                        }

                        Section {
                            WirelessConnectivityView()
                                .environmentObject(viewModel)
                        }
                        
                        Section {
                            DigitalWellbeingHubView()
                        }
                    }
                    
                }
            }
            .navigationTitle("설정")
            .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer, prompt: "검색") {
                
                if !viewModel.searchText.isEmpty {
                    Color.clear
                }
            }
            .onSubmit(of: .search) {
                print("onSubmit -> \(viewModel.searchText)")
            }
            .onChange(of: viewModel.searchText) { newValue in
                print("onChange -> \(newValue)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
