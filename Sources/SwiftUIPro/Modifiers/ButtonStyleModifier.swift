//
//  SwiftUIView.swift
//  
//
//  Created by mohammad mugish on 01/09/21.
//

import SwiftUI

public struct ButtonStyle: ViewModifier {
    var textAlignment: TextAlignment
    var foregroundColor: FontColor
    var backgroundColor: ButtonBackgroundColor
    var fontStyle: MyFonts
    var fontSize: CGFloat
    var horizontalPadding: CGFloat
    var verticalPadding: CGFloat
    var cornerRadius: CGFloat
    var shadow: (x: CGFloat, y: CGFloat, color: ShadowColor, opacity: Double, radius: CGFloat)
    
    public func body(content: Content) -> some View {
        content
            .foregroundColor(.init(hex: foregroundColor.rawValue))
            .font(.custom(fontStyle.rawValue, size: fontSize))
            .multilineTextAlignment(textAlignment)
            .padding(.horizontal, horizontalPadding)
            .padding(.vertical, verticalPadding)
            .background(Color.init(hex: backgroundColor.rawValue))
            .cornerRadius(cornerRadius)
            .shadow(color: .init(hex: shadow.color.rawValue).opacity(shadow.opacity), radius: shadow.radius, x: shadow.x, y: shadow.y)
    }
}
