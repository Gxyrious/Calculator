//
//  CModel.swift
//  Calculator
//
//  Created by 刘畅 on 2022/9/24.
//

import Foundation

struct CModel {
    var lasNum: String?
    var curNum: String = "0"
    
    var ope: Int = 0
    
    mutating func setLastNumber(number: String) {
        lasNum = number
    }
    
    mutating func setCurrentNumber(number: String) {
        curNum = number
    }
    
    enum Operate {
        case add
        case subtract
        case multiply
        case divide
    }
}
