//
//  CModel.swift
//  Calculator
//
//  Created by 刘畅 on 2022/9/24.
//

import Foundation

struct CModel {
    var lasNum: String?
    var curNum: String?
    var screenText: String = "0"
    var ope: Int = -1
    
    mutating func setLastNumber(number: String?) {
        lasNum = number
    }
    
    mutating func setCurrentNumber(number: String?) {
        curNum = number
    }
    
    mutating func followCurrentNumber() {
        screenText = curNum!
    }
    
    mutating func setScreenText(text: String) {
        screenText = text
    }
    
    mutating func setOperator(ope: Int) {
        self.ope = ope
    }
    
    mutating func clearAll() {
        lasNum = nil
        curNum = nil
        screenText = "0"
        ope = -1
    }
    
    
    enum Operate {
        case add
        case subtract
        case multiply
        case divide
    }
}
