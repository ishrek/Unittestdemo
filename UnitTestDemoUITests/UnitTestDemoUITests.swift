//
//  UnitTestDemoUITests.swift
//  UnitTestDemoUITests
//
//  Created by iShrek on 12/21/19.
//  Copyright © 2019 iShrek. All rights reserved.
//

import XCTest

class UnitTestDemoUITests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super .setUp()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
//        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSayHello(app: XCUIApplication) {
//        let app = XCUIApplication()
        app.buttons["say hello"].tap()
        XCTAssert(app.alerts.element.staticTexts["sups"].exists)
        XCTAssertEqual(app.alerts.element.label, "Hello")
        app.buttons["Dismiss"].tap()
    }
    
    
    
    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        testSayHello(app: app)
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
