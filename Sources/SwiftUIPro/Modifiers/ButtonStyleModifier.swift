//
//  SwiftUIView.swift
//  
//
//  Created by mohammad mugish on 01/09/21.
//

import SwiftUI

public struct ButtonStyle: ViewModifier {
 
    
    public var textAlignment: TextAlignment
    public var foregroundColor: FontColor
    public var backgroundColor: ButtonBackgroundColor
    public var fontStyle: MyFonts
    public var fontSize: CGFloat
    public var horizontalPadding: CGFloat
    public var verticalPadding: CGFloat
    public var cornerRadius: CGFloat
    public var shadow: (x: CGFloat, y: CGFloat, color: ShadowColor, opacity: Double, radius: CGFloat)
    
    public init(textAlignment: TextAlignment, foregroundColor: FontColor, backgroundColor: ButtonBackgroundColor, fontStyle: MyFonts, fontSize: CGFloat, horizontalPadding: CGFloat, verticalPadding: CGFloat, cornerRadius: CGFloat, shadow: (x: CGFloat, y: CGFloat, color: ShadowColor, opacity: Double, radius: CGFloat)) {
        self.textAlignment = textAlignment
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.fontStyle = fontStyle
        self.fontSize = fontSize
        self.horizontalPadding = horizontalPadding
        self.verticalPadding = verticalPadding
        self.cornerRadius = cornerRadius
        self.shadow = shadow
    }
    
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
