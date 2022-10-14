//
//  ContentView.swift
//  Calculator
//
//  Created by 刘畅 on 2022/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var document: CDocument
    
    let greyColor: Color = .gray
    let yellowColor: Color = .yellow
    let blackColor: Color = .black
    
//    let buttonSize: CGFloat = 80
        
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        GeometryReader { geometry in
            let screenWidth = geometry.size.width
//            let screenHeight = geometry.size.height
            let buttonSize: CGFloat = screenWidth / 4.5
            VStack {
                // 显示屏
                DisplayScreen()
                
                Spacer()
                // 按键区域
                Grid() {
                    GridRow {
                        ClearButton(size: buttonSize)
                        ReverseButton(size: buttonSize)
                        PercentageButton(size: buttonSize)
                        OperatorButton(ope: 4, size: buttonSize)
                    }
                    GridRow {
                        NumberButton(number: "7", size: buttonSize)
                        NumberButton(number: "8", size: buttonSize)
                        NumberButton(number: "9", size: buttonSize)
                        OperatorButton(ope: 3, size: buttonSize)
                    }
                    GridRow {
                        NumberButton(number: "4", size: buttonSize)
                        NumberButton(number: "5", size: buttonSize)
                        NumberButton(number: "6", size: buttonSize)
                        OperatorButton(ope: 2, size: buttonSize)
                    }
                    GridRow {
                        NumberButton(number: "1", size: buttonSize)
                        NumberButton(number: "2", size: buttonSize)
                        NumberButton(number: "3", size: buttonSize)
                        OperatorButton(ope: 1, size: buttonSize)
                    }
                    GridRow {
                        NumberButton(number: "0", size: buttonSize)
                        InvertButton(size: buttonSize)
                        DotButton(size: buttonSize)
                        OperatorButton(ope: 0, size: buttonSize)
                    }

                }
                .padding(.bottom, 30)
                .frame(width: screenWidth)
            }
        }
        .background(.black)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CDocument())
    }
}
