//
//  SwiftUIView.swift
//  
//
//  Created by mohammad mugish on 01/09/21.
//

import SwiftUI

struct FontStyle: ViewModifier {
    var name: MyFonts
    var color: FontColor
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init(hex: color.rawValue))
            .font(Font.custom(name.rawValue, size: size))
    }
}
