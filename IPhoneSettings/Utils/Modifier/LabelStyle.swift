//
//  LabelStyle.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/17.
//

import SwiftUI

public struct LabelImageStyle: LabelStyle {
    public var color: Color
    public var size: CGSize
    public var cornerRadius: CGFloat = 0
    
    public func makeBody(configuration: Configuration) -> some View {
        
        Label {
            configuration.title
        } icon: {
            configuration.icon
                .foregroundColor(.white)
                .frame(width: size.width, height: size.height)
                .background(color)
                .cornerRadius(cornerRadius)
        }

    }
}
