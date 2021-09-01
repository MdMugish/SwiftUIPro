//
//  SwiftUIView.swift
//  
//
//  Created by mohammad mugish on 01/09/21.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var textAlignment: TextAlignment
    var foregroundColor: FontColor
    var backgroundColor: ButtonBackgroundColor
    var fontStyle: MyFonts
    var fontSize: CGFloat
    var horizontalPadding: CGFloat
    var verticalPadding: CGFloat
    var cornerRadius: CGFloat
    var shadow : (x: CGFloat, y: CGFloat, color: ShadowColor, opacity: Double, radius: CGFloat)
    var action: () -> Void
    var body: some View {
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
