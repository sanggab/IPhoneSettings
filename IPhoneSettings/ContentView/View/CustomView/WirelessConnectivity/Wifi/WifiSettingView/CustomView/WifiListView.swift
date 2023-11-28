//
//  WifiListView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

@frozen public enum LongPressState {
    /// LongPress 취소 시 상태
    case inactive
    
    /// LongPress 혹은 Tap 상태
    case pressing
}

public struct WifiListView: View {
    @EnvironmentObject private var viewModel: ContentViewModel
    
    @State private var openDestination: Bool = false
    @State private var backgroundState: Bool = false
    
    @GestureState private var longState: LongPressState = .inactive
    
    @State private var dragState: Bool = false
    
    public var idx: Int
    
    public var body: some View {
        let wifiModel = viewModel.getWifiModel(idx: idx)
        
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
        .contentShape(Rectangle())
        // NavigationLink의 Gesture 방식을 구현하려면 이런식으로 LongPress는 updating으로 State를 관리한다.
        .gesture(
            LongPressGesture(minimumDuration: .infinity)
                .updating($longState, body: { value, state, _ in
                    if value {
                        state = .pressing
                    } else {
                        state = .inactive
                    }
                })
        )
        .simultaneousGesture(
            DragGesture()
                .onChanged({ _ in
                    dragState = true
                })
                .onEnded({ _ in
                    dragState = false
                })
        )
        .onChange(of: longState, perform: { newValue in
            
            switch newValue {
            case .pressing:
                print("꾹 누르거나 탭중")
                backgroundState = true
            case .inactive where dragState:
                print("꾹 누르다가 드래그 시 취소")
                backgroundState = false
            case .inactive:
                print("액션 고")
                backgroundState = false
                
                if wifiModel.isConnected {
                    print("Destination으로 보내라")
                    
                    openDestination.toggle()
                    
                } else {
                    
                    if !wifiModel.wifiPW.history {
                        print("암호 입력창 보내라")
                    } else {
                        print("선택한걸로 와이파이 설정")
                        viewModel.newConnectedWifi(idx: idx)
                    }
                    
                    
                }
                
            }
            
        })
        .listRowBackground(backgroundState ? Color.gray.opacity(0.5) : nil)
        .overlay(content: {
            NavigationLink(destination: Text("ㅇㅇ"), isActive: $openDestination) {
                EmptyView()
            }
            .opacity(0.0)
            .hidden()
        })
    }
}

struct WifiListView_Previews: PreviewProvider {
    static var previews: some View {
        WifiListView(idx: 0)
    }
}

//        .contentShape(Rectangle())
//        .gesture(
//            LongPressGesture(minimumDuration: 0.5) // 조절 가능한 최소 시간
//                                .onChanged { value in
//                                    // 눌리는 동안의 동작 (옵션)
//                                    print("Long press in progress")
//                                    backgroundState = true
//
//                                }
//                                .onEnded { value in
//                                    // 손가락을 뗄 때의 동작
//                                    print("Long press ended")
//                                    backgroundState = false
//
//                                    if wifiModel.isConnected {
//
//                                        if !wifiModel.wifiPW.history {
//                                            print("와이파이 세팅해라")
//                                        } else {
//                                            print("설정창으로 보내라")
//                                            openDestination.toggle()
//                                        }
//
//                                    } else {
//                                        print("새로 연결하라")
//
//                                        viewModel.newConnectedWifi(idx: idx)
//
//                                    }
//                                }
//        )
//        .simultaneousGesture(
//            DragGesture(minimumDistance: 0.2)
//                .onChanged({ gesture in
//                    let location = gesture.location
//                    let startLocation = gesture.startLocation
//
//                    if !startLocation.equalTo(location) {
//                        backgroundState = false
//                    }
//                })
//                .onEnded { _ in
//                    print("Drage Ended")
//                }
//        )
//        .simultaneousGesture(
//            TapGesture()
//                .onEnded { _ in
//                    print("Tap ended")
//                    backgroundState = false
//
//                    if wifiModel.isConnected {
//
//                        if !wifiModel.wifiPW.history {
//                            print("와이파이 세팅해라")
//                        } else {
//                            print("설정창으로 보내라")
//                            openDestination.toggle()
//                        }
//
//                    } else {
//                        print("새로 연결하라")
//
//                        viewModel.newConnectedWifi(idx: idx)
//
//                    }
//                }
//        )
/// NavigationLink의 Gesture 방식을 구현하려면 이런식으로 LongPress는 updating으로 State를 관리한다.
//        .gesture(
//            LongPressGesture(minimumDuration: .infinity)
//                .updating($longState, body: { value, state, _ in
//                    if value {
//                        state = .pressing
//                    } else {
//                        state = .inactive
//                    }
//                })
//        )
//        .simultaneousGesture(
//            DragGesture()
//                .onChanged({ _ in
//                    dragState = true
//                })
//                .onEnded({ _ in
//                    dragState = false
//                })
//        )
//        .onTapGesture {
//            print("hi")
//        }
//        .onLongPressGesture(minimumDuration: .infinity, perform: {
//            print("perform")
//        }, onPressingChanged: { state in
//                if state {
//                    longState = .pressing
//                } else {
//                    longState = .inactive
//                }
//        })
