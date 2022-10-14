//
//  CalculatorApp.swift
//  Calculator
//
//  Created by 刘畅 on 2022/9/23.
//

import SwiftUI

@main
struct CalculatorApp: App {
    @StateObject private var document = CDocument()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(document)
        }
    }
}
