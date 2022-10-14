//
//  DisplayScreen.swift
//  Calculator
//
//  Created by 刘畅 on 2022/10/14.
//

import SwiftUI

struct DisplayScreen: View {
    
    @EnvironmentObject var document: CDocument
    
    var body: some View {
        Text(document.screenNumber)
            .font(.system(size: 80))
            .foregroundColor(.white)
    }
}

struct DisplayScreen_Previews: PreviewProvider {
    static var previews: some View {
        DisplayScreen()
    }
}
