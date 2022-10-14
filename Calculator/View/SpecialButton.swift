//
//  SpecialButton.swift
//  Calculator
//
//  Created by 刘畅 on 2022/10/14.
//

import SwiftUI

// 封装按钮图标
//struct ButtonCircle: View {
//    var body: some View {
//        Circle()
//            .fill()
//    }
//}

// 清除按钮
struct ClearButton: View {
    
    @EnvironmentObject var document: CDocument
    
    let size: CGFloat
    
    var body: some View {
        Button {
            //
        } label: {
            Circle()
                .fill(.brown)
                .padding(3)
                .frame(width: size, height: size)
                .overlay(
                    (document.ope == -1 ? Text("AC") : Text("C"))
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                )
        }
    }
}

// 正负反转按钮
struct ReverseButton: View {
    
    @EnvironmentObject var document: CDocument
    
    let overlay: String = "+/-"
    
    let size: CGFloat
    
    var body: some View {
        Button {
            //
        } label: {
            Circle()
                .fill(.brown)
                .padding(3)
                .frame(width: size, height: size)
                .overlay(
                    Text(overlay)
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                )
        }
    }
}

// 百分比按钮
struct PercentageButton: View {
    
    @EnvironmentObject var document: CDocument
    
    let overlay: String = "%"
    
    let size: CGFloat
    
    var body: some View {
        Button {
            //
        } label: {
            Circle()
                .fill(.brown)
                .padding(3)
                .frame(width: size, height: size)
                .overlay(
                    Text(overlay)
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                )
        }
    }
}

// 倒数按钮
struct InvertButton: View {
    
    @EnvironmentObject var document: CDocument
    
    let overlay: String = "1/x"
    
    let size: CGFloat
    
    var body: some View {
        Button {
            //
        } label: {
            Circle()
                .fill(.brown)
                .padding(3)
                .frame(width: size, height: size)
                .overlay(
                    Text(overlay)
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                )
        }
    }
}

// 小数点按钮
struct DotButton: View {
    
    @EnvironmentObject var document: CDocument
    
    let overlay: String = "."
    
    let size: CGFloat
    
    var body: some View {
        Button {
            //
        } label: {
            Circle()
                .fill(.brown)
                .padding(3)
                .frame(width: size, height: size)
                .overlay(
                    Text(overlay)
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                )
        }
    }
}
