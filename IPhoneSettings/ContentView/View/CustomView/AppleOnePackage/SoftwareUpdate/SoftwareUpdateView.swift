//
//  SoftwareUpdateView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct SoftwareUpdateView: View {
    public var body: some View {
        NavigationLink {
            Text("소프트웨어 업데이트")
        } label: {
            
            HStack {
                
                Text("소프트웨어 업데이트 사용 가능")
                
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

    }
}

struct SoftwareUpdateView_Previews: PreviewProvider {
    static var previews: some View {
        SoftwareUpdateView()
    }
}
