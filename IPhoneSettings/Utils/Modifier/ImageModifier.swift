//
//  ImageModifier.swift
//  IPhoneSettings
//
//  Created by Gab on 2023/11/22.
//

import SwiftUI

extension Image {
    
    public init(systemname name: String, withConfiguration configuration: UIImage.Configuration) {
        if let image = UIImage(systemName: name, withConfiguration: configuration) {
            
            self.init(uiImage: image)
        } else {
            
            self.init(systemName: name)
        }
    }
}
