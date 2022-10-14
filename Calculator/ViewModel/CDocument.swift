//
//  CDocument.swift
//  Calculator
//
//  Created by 刘畅 on 2022/9/24.
//

import Foundation

class CDocument: ObservableObject {
    
    @Published private(set) var cModel: CModel
    
    init() {
        cModel = CModel()
    }
    
    var lasNum: String? { cModel.lasNum }
    
    var curNum: String { cModel.curNum }
    
    var ope: Int { cModel.ope }
    
    func clear() {
        if ope == -1 {
            // 直接全部清空
            cModel.clearAll()
        }
        else {
            // 只把当前数字设置为零
            cModel.setCurrentNumber(number: "0")
        }
    }
    
    func tapNumber(_ number: String) {
        var currentNumber = Int(curNum)!
        let newNumber = Int(number)!
        currentNumber = currentNumber * 10 + newNumber
        cModel.setCurrentNumber(number: String(currentNumber))
    }
    
}
