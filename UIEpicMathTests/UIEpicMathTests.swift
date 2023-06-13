//
//  UIEpicMathTests.swift
//  UIEpicMathTests
//
//  Created by Klaas Post on 15/03/2023.
//

import XCTest

final class UIEpicMathTests: XCTestCase {
    
    let view = EpicMathView()
    
    override func setUpWithError() throws {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // Launch the app
        view.AppInstance.launch()
        
        // UI tests must launch the application that they test.
        XCUIDevice.shared.orientation = .faceUp
    }
    
    override func tearDownWithError() throws {
        view.AppInstance.terminate()
    }
    
    func testInputValuesPlus() throws {
        let a = Decimal(45)
        let b = Decimal(15)
        
        XCTAssertEqual("\(a + b)", view.getResultFromOperation(a: a, b: b))
    }
    
    func testChangeOperation() throws {
                        
    }
    
//    func testInputValuesMultiply() throws {
//        XCTAssertTrue(home.doOperation(a: 4, b: 5, opType: "Multiply"))
//    }
    
//    func testInputValuesDevide() throws {
//        XCTAssertTrue(home.doOperation(a: 10, b: 2, opType: "Devide"))
//    }
}
