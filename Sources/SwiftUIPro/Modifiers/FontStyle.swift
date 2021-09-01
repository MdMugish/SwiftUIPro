//
//  SwiftUIView.swift
//  
//
//  Created by mohammad mugish on 01/09/21.
//

import SwiftUI

public struct FontStyle: ViewModifier {
    
    
    var name: MyFonts
    var color: FontColor
    var size: CGFloat
    
    public init(name: MyFonts, color: FontColor, size: CGFloat) {
        self.name = name
        self.color = color
        self.size = size
    }
    
    public func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init(hex: color.rawValue))
            .font(Font.custom(name.rawValue, size: size))
    }
}
