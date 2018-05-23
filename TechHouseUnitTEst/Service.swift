//
//  Service.swift
//  TechHouseUnitTEst
//
//  Created by federico mazzini on 18/05/2018.
//  Copyright © 2018 Lateral View. All rights reserved.
//

import Foundation

public protocol Service {
    func load() -> [String: Any]
}

class CarsService: Service {
    
    func load() -> [String: Any] {
        // Load data from webservice.
        
        return [:]
    }
}

class DataBaseCarsService: Service {
    
    func load() -> [String: Any] {
        // Load data from database.
        
        return [:]
    }
}

class MockCarsService: Service {
    
    func load() -> [String: Any] {
        // Mock data for testing.
        return ["Corvette": 1986]
    }
}
