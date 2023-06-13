//
//  HomeView.swift
//  UIEpicMathTests
//
//  Created by Klaas Post on 17/03/2023.
//

import Foundation

class EpicMathView : EpicMathBaseModel {
    
    private lazy var Title = AppInstance.staticTexts["Title"]
    private lazy var inputA = AppInstance.textFields["Input A"]
    private lazy var operationPicker = AppInstance.pickerWheels["OpPicker"]
    private lazy var inputB = AppInstance.textFields["Input B"]
    private lazy var answerF = AppInstance.staticTexts["Answer"]
    
    func getResultFromOperation(a: Decimal, b: Decimal) -> String {
        inputA.tap()
        inputA.typeText("\(a)")
        
        inputB.tap()
        inputB.typeText("\(b)")
        
        return answerF.label
    }
}
