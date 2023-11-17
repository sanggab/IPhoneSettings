//
//  MyInfoView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/17.
//

import SwiftUI

public struct MyInfoView: View {
//    @Binding public var notifiState: Bool
    @ObservedObject public var viewModel: ContentViewModel
    
    public var body: some View {
        Section {
            HStack {
                NavigationLink {
                    Text("내 정보")
                } label: {
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.gray)
                        .overlay {
                            Text("상갑")
                                .font(.title)
                        }
                    
                    VStack(alignment: .leading) {
                        Text("심상갑")
                            .font(.title2)
                        Text("Apple ID, iCloud, 미디어 및 구입 항목")
                            .font(.footnote)
                    }
                }
            }
            
            NavigationLink(destination: Text("얏호")) {
                HStack {
                    Text("iCloud 저장 공간이 거의 가득 참")
                    
                    Spacer()
                    
                    Circle()
                        .foregroundColor(.red)
                        .overlay {
                            Text("1")
                                .foregroundColor(.white)
                        }
                        .frame(width: 25, height: 25)
                        .padding(.trailing, 10)
                        
                }
            }

            
//            if viewModel.isExposureNoti {
//
//                NavigationLink(destination: Text("얏호")) {
//                    HStack {
//                        Text("iCloud 저장 공간이 거의 가득 참")
//
//                        Spacer()
//
//                        Circle()
//                            .foregroundColor(.red)
//                            .overlay {
//                                Text("1")
//                                    .foregroundColor(.white)
//                            }
//                            .frame(width: 25, height: 25)
//                            .padding(.trailing, 10)
//
//                    }
//                }
//            }

        }
    }
}

struct MyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MyInfoView(viewModel: .init())
    }
}
