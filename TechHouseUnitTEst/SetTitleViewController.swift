//
//  SetTitleViewController.swift
//  TechHouseUnitTEst
//
//  Created by federico mazzini on 23/05/2018.
//  Copyright © 2018 Lateral View. All rights reserved.
//

import UIKit

class SetTitleViewController: UIViewController {

    @IBOutlet weak var setTitleTextfield: UITextField!
    @IBOutlet weak var setTitleButton: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToTitleScreen" {
            guard let myVC = segue.destination as? TitleViewController else { return }
            myVC.titleString = setTitleTextfield.text
        }
    }

}
