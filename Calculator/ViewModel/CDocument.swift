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
}
