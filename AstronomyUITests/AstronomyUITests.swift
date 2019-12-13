//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Niranjan Kumar on 12/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {
    
    // MARK: - Properties

    
    private var app: XCUIApplication = XCUIApplication()
    
    private var cell: XCUIElement {
        return app.cells["ImageCell.identifier"]
    }
    
    private var savebutton: XCUIElement {
        return app.buttons["PhotoDetailViewController.SaveButton"]
    }

    
    // MARK: - Test List
    
    /*
     
     1. Photo Fetching and Loading
     2. Test Viewing Another Sol
     3. Test Tap Image Goes to Detail VC
     4. Save Image Functions Properly
     
     
     */

    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        XCUIApplication().launch()

        app.launchArguments = ["UITesting"]
    }
    
    // MARK: - UI Tests
    
    func testPhotoLoading() {
        let fetchdPhotosExpectation = expectation(for: NSPredicate(format: "count > 0"), evaluatedWith: app.cells.images, handler: nil)
        
        fetchdPhotosExpectation.expectationDescription = "Photos have been fetched and displayed."
        waitForExpectations(timeout: 5)
    }

    
    
    
    

}
