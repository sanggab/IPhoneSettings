//
//  ContentView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/17.
//

import SwiftUI

public struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    public var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Form {
                        MyInfoView(viewModel: viewModel)
                    }
                    .navigationTitle("설정")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
