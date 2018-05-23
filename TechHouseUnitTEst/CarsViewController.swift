//
//  CarsViewController.swift
//  TechHouseUnitTEst
//
//  Created by federico mazzini on 18/05/2018.
//  Copyright © 2018 Lateral View. All rights reserved.
//

import UIKit

class CarsViewController: UIViewController {
    
    var data: [String: Any] = [:]
    var service: Service?
    
    init(service: Service) {
        super.init(nibName: nil, bundle: nil)
        
        self.service = service
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let myService = service else { return }
        self.data = myService.load()
    }
}

