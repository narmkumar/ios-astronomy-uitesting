//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Niranjan Kumar on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {
    
    private var app: XCUIApplication = XCUIApplication()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        app.launchArguments = ["UITesting"]
    }
    
//    func testSavePhoto() {
//        let fetchPhotoExpectation = expectation(for: NSPredicate(format: "count > 0"), evaluatedWith: app.tables.cells.images, handler: nil)
//
//        fetchPhotoExpectation.expectationDescription = "Space Photos have been fetched and are displayed"
//
//
//        waitForExpectations(timeout: 5)
//    }
    
    

}
