//
//  TechHouseUnitTEstUITests.swift
//  TechHouseUnitTEstUITests
//
//  Created by federico mazzini on 23/05/2018.
//  Copyright © 2018 Lateral View. All rights reserved.
//

import XCTest

class TechHouseUnitTEstUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    let Subject_Title = "This is now the title"
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Test Start, can be replaced with func calls for common starts
        
        let showTablebutton = app.buttons["ShowTableButton"]
        showTablebutton.tap()
        
        // The TableView is now visible
        
        let tableView = app.tables["MyTable"]
        XCTAssert(tableView.cells.count == 3)
        
        let cell = tableView.cells.containing(.cell, identifier: "2")
        let cellLabelText = cell.staticTexts.element(boundBy: 0).label
        XCTAssertEqual(cellLabelText, "Second Row")
        
        cell.staticTexts.element(boundBy: 0).tap()
        
        // The TextView is now visible
        
        let textField = app.otherElements.textFields["TitleTextField"]
        textField.tap()
        textField.typeText(Subject_Title)
        
        XCTAssertEqual(textField.value as? String ?? "", Subject_Title)
        
        let setButton = app.buttons["SetButton"]
        setButton.tap()
        
        // The title is set to the previous input
        
        XCTAssertEqual(app.staticTexts["TitleLabel"].label, Subject_Title)
    }
    
}
