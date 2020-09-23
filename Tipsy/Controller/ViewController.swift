//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var splitNumber: UILabel!
    

    @IBAction func tipTypeChanged(_ sender: UIButton) {
        zeroButton.isSelected = false;
        tenButton.isSelected = false;
        twentyButton.isSelected = false;
        
        sender.isSelected = true;
    }
    
    @IBAction func splitNumberIncreased(_ sender: UIStepper) {
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
    }
}

