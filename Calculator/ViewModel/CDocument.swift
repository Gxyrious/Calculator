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
    
    var screenNumber: String { cModel.screenText }
    
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
            do {
                let answer = try simpleCalculate(left: lastNumber, right: currentNumber)
                print("answer=\(answer!)")
                cModel.setCurrentNumber(number: String(answer!))
                cModel.followCurrentNumber()
            } catch {
                print(error)
                cModel.setScreenText(text: "Error")
            }
        } else {
            cModel.setOperator(ope: ope)
            cModel.setLastNumber(number: curNum)
            cModel.setCurrentNumber(number: nil)
        }
    }
    
    private func simpleCalculate(left: Int, right: Int) throws -> Int? {
        var answer: Int? = nil
        if ope == 1 {
            answer = left + right
        } else if ope == 2 {
            answer = left - right
        } else if ope == 3 {
            answer = left * right
        } else if ope == 4 {
            if right == 0 {
                throw OperationError.DividedByZero
            } else {
                answer = left / right
            }
        }
        return answer
    }
    
}

enum OperationError: Error {
    case DividedByZero
}
