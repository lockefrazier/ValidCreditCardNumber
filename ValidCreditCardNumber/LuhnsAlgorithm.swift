//
//  LuhnsAlgorithm.swift
//  ValidCreditCardNumber
//
//  Created by Locke Frazier on 1/15/15.
//  Copyright (c) 2015 Frazier App Company, LLC. All rights reserved.
//

import Foundation

func validCard (var creditCardNumber: Int) -> Bool {
    var numberOfDigits = 0
    
    var sumDigits = 0
    
    while creditCardNumber != 0 {
        var tempNum = creditCardNumber % 10
        var tempString: String;
        
        if numberOfDigits % 2 != 0 {
            
            tempNum *= 2
            
            if tempNum < 10 {
                sumDigits += tempNum
            } else {
                let secondNum: Int = tempNum % 10
                tempNum /= 10
                let firstNum: Int = tempNum % 10
                sumDigits += (firstNum + secondNum)
            }
        } else {
            sumDigits += tempNum
        }
        creditCardNumber /= 10
        numberOfDigits++
    }
    
    if sumDigits % 10 == 0 {
        return true
    } else {
        return false
    }
}