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
    
    var chosenPercentageValue = 0.10;
    var numberOfPeople = 2;
    var billTotal = 0.0;
    var finalResult = "0.0";
    

    @IBAction func tipTypeChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true); //dismiss keyboard
        
        zeroButton.isSelected = false;
        tenButton.isSelected = false;
        twentyButton.isSelected = false;
        
        sender.isSelected = true;
        
        let percentageValue = sender.currentTitle!;
        
        let buttonTitleMinusPercentSign =  String(percentageValue.dropLast())
                
        //Turn the String into a Double.
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        
        chosenPercentageValue = buttonTitleAsANumber / 100;
    }
    
    @IBAction func splitNumberIncreased(_ sender: UIStepper) {
        
        splitNumber.text = String(format: "%.0f", sender.value)
        
        numberOfPeople = Int(sender.value);
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!;
        
        if bill != "" {
            billTotal = Double(bill)!;
            let result = billTotal * (1 + chosenPercentageValue) / Double(numberOfPeople);
            finalResult = String(format: "%.2f", result);
        }
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        //If the currently triggered segue is the "goToResults" segue.
        if segue.identifier == "goToResults" {
            
            //Get hold of the instance of the destination VC and type cast it to a ResultViewController.
            let destinationVC = segue.destination as! ResultViewController;
            
            //Set the destination ResultsViewController's properties.
            destinationVC.resultValue = finalResult;
            destinationVC.tip = Int(chosenPercentageValue * 100);
            destinationVC.numberOfPeople = numberOfPeople;
        }
    }
}

