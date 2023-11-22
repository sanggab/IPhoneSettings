//
//  TextModifier.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/21.
//

import SwiftUI

public struct TextModifier: ViewModifier {
    public var foregroundColor: Color
    public var alignment: Alignment
    public var fontDesign: Font.Design = .default
    
    public func body(content: Content) -> some View {
        content
            .foregroundColor(foregroundColor)
            .frame(alignment: alignment)
            .font(design: fontDesign)
    }
}
