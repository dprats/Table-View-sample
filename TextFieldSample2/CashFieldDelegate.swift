//
//  CashFieldDelegate.swift
//  TextFieldSample2
//
//  Created by diego prats on 12/8/15.
//  Copyright © 2015 diego prats. All rights reserved.
//

import Foundation
import UIKit

class CashFieldDelegate: NSObject, UITextFieldDelegate {
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let oldTextNSString = textField.text! as NSString
        //we want to merge the old and the new string (we can only merge with NSString method so we cast as NSString above)
        var newTextString = oldTextNSString.stringByReplacingCharactersInRange(range, withString: string)
        //convert newText to String
        let newtextString = String(newTextString)
        
        //get the list of digits
        let digits = NSCharacterSet.decimalDigitCharacterSet()
        
        
        //the text of the digits
        var digitsText = ""
        
        //we want to only accept the digits from the String
        for char in newTextString.unicodeScalars {
            if digits.longCharacterIsMember(char.value){
                digitsText.append(char)
            }
        }
        
        //format the string
        if let numOfPennies = Int(digitsText) {
            
            newTextString = "$" + dollarsToShow(numOfPennies) + "." + centsToShow(numOfPennies)
            
        } else {
            newTextString = "$0.0"
        }
        
        textField.text = newTextString
        
        return true
    }
    
    func dollarsToShow(value: Int)->String {
        return String(value/100)
    }
    
    func centsToShow(value:Int)->String {
        
        let cents = value % 1000
        var centsString = String(cents)
        
        if value < 10 {
            centsString = "0" + String(cents)
        }
        
        return centsString
        
    }
    
    
    
    
}