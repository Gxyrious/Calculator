//
//  TemplateButton.swift
//  Calculator
//
//  Created by 刘畅 on 2022/10/14.
//

import SwiftUI

struct TemplateButton: View {
    let fgColor: Color
    let bkColor: Color
    let size: CGFloat
    let overlay: String
    
    var buttonOverlay: some View {
        Text(overlay)
            .font(.system(size: 40))
            .foregroundColor(fgColor)
    }
    
    var body: some View {
        Button {
            //
        } label: {
            Circle()
                .fill(bkColor)
                .padding(3)
                .frame(width: size, height: size)
                .overlay(buttonOverlay)
        }

    }
}

struct TemplateButton_Previews: PreviewProvider {
    static var previews: some View {
        TemplateButton(fgColor: .gray, bkColor: .black, size: 80, overlay: "AC")
    }
}
