////
////  SettingView.swift
////  TCAProject
////
////  Created by Gab on 2023/11/16.
////
//
//import SwiftUI
//
//public class NewSearchBarViewModel: ObservableObject {
//    @Published public private(set) var cancelBtnState: Bool = true
//    @Published public var searchText: String = ""
//    
//    public func setCancelBtnState(state: Bool) {
//        self.cancelBtnState = state
//    }
//    
//    public func setSearchText(text: String) {
//        self.searchText = text
//    }
//}
//
//public struct NewSearchBar: View {
//    @Binding public private(set) var text: String
//    
//    public var body: some View {
//        HStack {
//            Image(systemName: "magnifyingglass")
//                .foregroundColor(.primary)
//            
//            TextField("검색", text: $text, onEditingChanged: { state in
//                print("State -> \(state)")
//                
//            })
//            .onChange(of: text) { newValue in
//                print(newValue)
//            }
//        }
//    }
//}
//
//struct SettingView: View {
//    @ObservedObject private var viewModel = NewSearchBarViewModel()
//    
//    var body: some View {
//        NavigationView {
//            ZStack {
//                VStack {
//                    Form {
//                        
//                        Section {
//                            HStack {
//                                NavigationLink {
//                                    Text("내 정보")
//                                } label: {
//                                    Circle()
//                                        .frame(width: 50, height: 50)
//                                        .foregroundColor(.gray)
//                                        .overlay {
//                                            Text("상갑")
//                                        }
//                                    
//                                    VStack(alignment: .leading) {
//                                        Text("심상갑")
//                                        Text("Apple ID, iCloud, 미디어 및 구입 항목")
//                                    }
//                                }
//
//                            }
//                            
//                            NavigationLink {
//                                Text("호호호")
//                            } label: {
//                                Text("iCloud 저장 공간이 거의 가득 참")
//                            }
//
//                        }
//                        
//                        Section {
//                            Text("hi")
//                        }
//                        
//                    }
//                }
//            }
//            .navigationTitle("설정")
//        }
//    }
//}
//
//struct SettingView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingView()
//    }
//}
