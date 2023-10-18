//
//  Wiggles_iOSUITests.swift
//  Wiggles-iOSUITests
//
//  Created by Leon, Rebecca on 10/08/2023.
//

import XCTest

final class Wiggles_iOSUITests: XCTestCase {
    
    override func setUpWithError() throws {
        
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        // Taps Parkinson on PLP
        let button = app.buttons["Parkinsonidentifier"]
        button.tap()
        
        // Verifies Adopt me button on PDP
        app.swipeUp()
        let adoptionLabel = app.buttons["Adopt me"]
        XCTAssertTrue(adoptionLabel.isHittable)
        app.buttons["Adopt me"].tap()
        
        // Navigates back to PLP
        app.swipeDown()
        app.buttons["back_icon"].tap()
        
    }
    
//        func testLaunchPerformance() throws {
//            if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//                // This measures how long it takes to launch your application.
//                measure(metrics: [XCTApplicationLaunchMetric()]) {
//                    XCUIApplication().launch()
//                }
//            }
//        }
//    
}
