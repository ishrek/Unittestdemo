//
//  UnitTestDemoTests.swift
//  UnitTestDemoTests
//
//  Created by iShrek on 12/21/19.
//  Copyright © 2019 iShrek. All rights reserved.
//

import XCTest
@testable import UnitTestDemo

class UnitTestDemoTests: XCTestCase {
    
    var viewController: ViewController!
    

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = (storyboard.instantiateInitialViewController() as! ViewController)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMultiplyFunction() {
        let multi = viewController.multiply(num1: 12, num2: 10)
        XCTAssert(multi == 120)
    }
    
    func testShowResultFunction() {
        let _ = viewController.view // additional code
        viewController.showResult(result: "120.0")

        XCTAssert(viewController.resultlb.text == "120.0", "resultLabel show the wrong text")
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        testMultiplyFunction()
        testShowResultFunction()
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
