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
    
    var curNum: String? { cModel.curNum }
    
    var screenNumber: String { cModel.screenNumber }
    
    var ope: Int { cModel.ope }
    
    func clear() {
        if curNum == nil {
            // 直接全部清空
            cModel.clearAll()
        }
        else {
            // 只把当前数字设置为零
            cModel.setCurrentNumber(number: nil)
        }
    }
    
    func reverse() {
        var currentNumber = Int(curNum!)!
        currentNumber *= -1
        cModel.setCurrentNumber(number: String(currentNumber))
        cModel.followCurrentNumber()
    }
    
    func tapNumber(_ number: String) {
        if curNum == nil {
            cModel.setCurrentNumber(number: "0")
        }
        var currentNumber = Int(curNum!)!
        let newNumber = Int(number)!
        currentNumber = currentNumber * 10 + newNumber
        cModel.setCurrentNumber(number: String(currentNumber))
        cModel.followCurrentNumber()
    }
    
    func tapOperator(_ ope: Int) {
        if ope == 0 && curNum != nil && lasNum != nil {
            // 等号，则直接计算
            let currentNumber = Int(curNum!)!
            let lastNumber = Int(lasNum!)!
            let answer = simpleCalculate(left: lastNumber, right: currentNumber)
            print("answer=\(answer)")
            if answer != nil {
                cModel.setCurrentNumber(number: String(answer!))
                cModel.followCurrentNumber()
            }
        } else {
            cModel.setOperator(ope: ope)
            cModel.setLastNumber(number: curNum)
            cModel.setCurrentNumber(number: nil)
        }
    }
    
    private func simpleCalculate(left: Int, right: Int) -> Int? {
        var answer: Int? = nil
        do {
            if ope == 1 {
                answer = left + right
            } else if ope == 2 {
                answer = left - right
            } else if ope == 3 {
                answer = left * right
            } else if ope == 4 {
                /* try */ answer = left / right
            }
        } catch {
            print(error)
        }
        return answer
    }
    
}
