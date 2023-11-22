//
//  BluetoothView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct BluetoothView: View {
    public var body: some View {
        NavigationLink(destination: Text("블루투스")) {
            HStack {
                
                Label {
                    Text("Bluetooth")
                        .font(.headline)
                } icon: {
                    Image("bluetooth")
                        .renderingMode(.template)
                }
                .labelStyle(LabelImageStyle(color: .blue, size: CGSize(width: 28, height: 28), cornerRadius: 7))

                
                Spacer()
                
                Text("켬")
                    .modifier(TextModifier(foregroundColor: .gray, alignment: .trailing, fontDesign: .rounded))
            }
        }
    }
}

struct BluetoothView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothView()
    }
}
