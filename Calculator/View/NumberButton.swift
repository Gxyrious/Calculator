//
//  NumberButton.swift
//  Calculator
//
//  Created by 刘畅 on 2022/10/14.
//

import SwiftUI

struct NumberButton: View {

    @EnvironmentObject var document: CDocument
    
    let number: String
    
    let size: CGFloat

    var numberOverlay: some View {
        Text(number)
            .font(.system(size: 40))
            .foregroundColor(.white)
    }
    
    var body: some View {
        Button {
            // Model中添加数字
            document.tapNumber(number)
        } label: {
            Circle()
                .fill(.gray)
                .padding(3)
                .frame(width: size, height: size)
                .overlay(numberOverlay)
        }
    }
}

struct NumberButton_Previews: PreviewProvider {
    static var previews: some View {
        NumberButton(number: "0", size: 80)
    }
}
