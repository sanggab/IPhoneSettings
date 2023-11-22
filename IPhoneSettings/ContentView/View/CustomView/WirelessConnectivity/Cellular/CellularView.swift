//
//  CellularView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct CellularView: View {
    public var body: some View {
        NavigationLink(destination: Text("셀룰러")) {
            HStack {
                
                Label("셀룰러", systemImage: "antenna.radiowaves.left.and.right")
                    .labelStyle(LabelImageStyle(color: .green, size: CGSize(width: 28, height: 28), cornerRadius: 7))
                
                Spacer()
                
            }
        }
    }
}

struct CellularView_Previews: PreviewProvider {
    static var previews: some View {
        CellularView()
    }
}
