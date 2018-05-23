//
//  TitleViewController.swift
//  TechHouseUnitTEst
//
//  Created by federico mazzini on 23/05/2018.
//  Copyright © 2018 Lateral View. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var titleString: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let myString = titleString {
            titleLabel.text = myString
        }
    }

}
