//
//  iCloudView.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct iCloudView: View {
    public var body: some View {
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
        
    }
}

struct iCloudView_Previews: PreviewProvider {
    static var previews: some View {
        iCloudView()
    }
}
