//
//  TextExtension.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/17.
//

import SwiftUI

extension View {
    
    func font(style: Font.TextStyle = .body, design: Font.Design = .default) -> some View {
        self.font(.system(style, design: design))
    }
}
