//
//  ViewController.swift
//  ValidCreditCardNumber
//
//  Created by Locke Frazier on 1/15/15.
//  Copyright (c) 2015 Frazier App Company, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var creditTextField: UITextField!
    @IBOutlet weak var validLabel: UILabel!
    @IBOutlet weak var checkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkCardNumber() {
        if checkButton.titleLabel?.text == "Check" {
            
            var creditCardString = creditTextField.text
            
            if creditCardString != nil {
                validCard(creditCardString.toInt()!)
                checkButton.setTitle("Recheck?", forState: UIControlState.Normal)
            } else {
                creditTextField.placeholder = "Must Enter Number"
            }
            
        } else {
            checkButton.setTitle("Check", forState: UIControlState.Normal)
        }
    }
    

}

