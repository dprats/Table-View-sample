//
//  ZipCodeDelegate.swift
//  TextFieldSample2
//
//  Created by diego prats on 12/8/15.
//  Copyright © 2015 diego prats. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        //get the character count
        let oldText = textField.text
        let length = oldText!.characters.count + string.characters.count
        
        return length <= 5
    }
    
}
