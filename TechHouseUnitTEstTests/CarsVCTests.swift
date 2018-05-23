//
//  TechHouseUnitTEstTests.swift
//  TechHouseUnitTEstTests
//
//  Created by federico mazzini on 18/05/2018.
//  Copyright © 2018 Lateral View. All rights reserved.
//

import XCTest
@testable import TechHouseUnitTEst

class CarsVCTests: XCTestCase {
    
    var carsVC      : CarsViewController?
    
    let mockService : Service = MockCarsService()
    let modelToTest : Int     = 1986
    
    /* Put setup code here. This method is called before
     the invocation of each test method in the class.
     */
    override func setUp() {
        super.setUp()
        
        carsVC      = CarsViewController(service: mockService)
    }
    
    /* Put teardown code here. This method is called
     after the invocation of each test method in
     the class.
     */
    override func tearDown() {
        super.tearDown()
        
        carsVC = nil
    }
    
    // Test that we have a Corvette
    func testCorvetteExists() {
        // Force the VC's view to load
        _ = carsVC?.view
        
        guard let corvetteModel = carsVC?.data["Corvette"] as? Int else {
            XCTAssertFalse(true, "Data not present on CarsVC")
            return
        }
        
        XCTAssertEqual(modelToTest, corvetteModel)
    }
    
}
