//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Famil Samadli on 9/23/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    
    var resultValue = "0.0";
    var numberOfPeople = 2;
    var tip = 10;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        result.text = resultValue;
        descriptionText.text = "Split between \(numberOfPeople) people, with \(tip)% tip."
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
