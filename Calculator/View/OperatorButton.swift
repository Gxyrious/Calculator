//
//  OperatorButton.swift
//  Calculator
//
//  Created by 刘畅 on 2022/10/14.
//

import SwiftUI

struct OperatorButton: View {
    
    @EnvironmentObject var document: CDocument
    
    let ope: Int
    
    let overlay_map = [
        0: "=",
        1: "+",
        2: "-",
        3: "*",
        4: "/",
    ]
    
    let size: CGFloat
    
    var buttonOverlay: some View {
        Text(overlay_map[ope]!)
            .font(.system(size: 40))
            .foregroundColor(.white)
    }
    
    var body: some View {
        Button {
            //
        } label: {
            Circle()
                .fill(.yellow)
                .padding(3)
                .frame(width: size, height: size)
                .overlay(buttonOverlay)
        }

    }
}

struct OperatorButton_Previews: PreviewProvider {
    static var previews: some View {
        OperatorButton(ope: 0, size: 80)
    }
}
