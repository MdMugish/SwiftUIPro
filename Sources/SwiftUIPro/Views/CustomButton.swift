//
//  SwiftUIView.swift
//  
//
//  Created by mohammad mugish on 01/09/21.
//

import SwiftUI

public struct CustomButton: View {
 
    
    public var text: String
    public var textAlignment: TextAlignment
    public var foregroundColor: FontColor
    public var backgroundColor: ButtonBackgroundColor
    public var fontStyle: MyFonts
    public var fontSize: CGFloat
    public var horizontalPadding: CGFloat
    public var verticalPadding: CGFloat
    public var cornerRadius: CGFloat
    public var shadow : (x: CGFloat, y: CGFloat, color: ShadowColor, opacity: Double, radius: CGFloat)
    public var action: () -> Void
    
    public init(text: String, textAlignment: TextAlignment, foregroundColor: FontColor, backgroundColor: ButtonBackgroundColor, fontStyle: MyFonts, fontSize: CGFloat, horizontalPadding: CGFloat, verticalPadding: CGFloat, cornerRadius: CGFloat, shadow: (x: CGFloat, y: CGFloat, color: ShadowColor, opacity: Double, radius: CGFloat), action: @escaping () -> Void) {
        self.text = text
        self.textAlignment = textAlignment
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.fontStyle = fontStyle
        self.fontSize = fontSize
        self.horizontalPadding = horizontalPadding
        self.verticalPadding = verticalPadding
        self.cornerRadius = cornerRadius
        self.shadow = shadow
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action()
        }) {
            Text(text)
                .modifier(ButtonStyle(textAlignment: textAlignment, foregroundColor: foregroundColor, backgroundColor: backgroundColor, fontStyle: fontStyle, fontSize: fontSize, horizontalPadding: horizontalPadding, verticalPadding: verticalPadding, cornerRadius: cornerRadius, shadow: (x: shadow.x, y: shadow.y, color: shadow.color, opacity: shadow.opacity, radius: shadow.radius)))
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "Hello SwiftUIPro", textAlignment: .leading, foregroundColor: .white, backgroundColor: .blue, fontStyle: .poppinsBold, fontSize: 50, horizontalPadding: 30, verticalPadding: 10, cornerRadius: 10, shadow: (x: 0, y: 0, color: .black, opacity: 0.3, radius: 6), action: {
              print("Action")
            })
    }
}
