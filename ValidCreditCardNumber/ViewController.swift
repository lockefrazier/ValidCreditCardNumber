//
//  ViewController.swift
//  ValidCreditCardNumber
//
//  Created by Locke Frazier on 1/15/15.
//  Copyright (c) 2015 Frazier App Company, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var creditTextField: UITextField!
    @IBOutlet weak var validLabel: UILabel!
    @IBOutlet weak var checkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.creditTextField.delegate = self    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkCardNumber() {
        if checkButton.titleLabel?.text == "Check" {
            
            var creditCardString = creditTextField.text
            
            if let creditCardNumber = creditCardString?.toInt() {
                
                var valid:Bool = validCard(creditCardNumber)
                
                checkButton.setTitle("Recheck?", forState: UIControlState.Normal)
                
                validLabel.hidden = false
                
                if valid {
                    validLabel.text = "VALID"
                } else {
                    validLabel.text = "INVALID"
                }
                
            } else {
                creditTextField.placeholder = "Must Enter Number"
            }
            
        } else {
            checkButton.setTitle("Check", forState: UIControlState.Normal)
            validLabel.hidden = true
            creditTextField.text = nil
            creditTextField.placeholder = "Card Number"
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        creditTextField.resignFirstResponder()
        return true
    }
    

}

