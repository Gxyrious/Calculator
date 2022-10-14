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
                        TemplateButton(fgColor: .black, bkColor: .teal, size: buttonSize, overlay: "AC")
                        TemplateButton(fgColor: .black, bkColor: .teal, size: buttonSize, overlay: "+/-")
                        TemplateButton(fgColor: .black, bkColor: .teal, size: buttonSize, overlay: "%")
                        TemplateButton(fgColor: .white, bkColor: .yellow, size: buttonSize, overlay: "/")
                    }
                    GridRow {
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "7")
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "8")
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "9")
                        TemplateButton(fgColor: .white, bkColor: .yellow, size: buttonSize, overlay: "*")
                    }
                    GridRow {
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "4")
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "5")
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "6")
                        TemplateButton(fgColor: .white, bkColor: .yellow, size: buttonSize, overlay: "-")
                    }
                    GridRow {
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "1")
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "2")
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "3")
                        TemplateButton(fgColor: .white, bkColor: .yellow, size: buttonSize, overlay: "+")
                    }
                    GridRow {
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "0")
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: "1/x")
                        TemplateButton(fgColor: .white, bkColor: .gray, size: buttonSize, overlay: ".")
                        TemplateButton(fgColor: .white, bkColor: .yellow, size: buttonSize, overlay: "=")
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
