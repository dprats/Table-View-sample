//
//  ViewController.swift
//  TextFieldSample2
//
//  Created by diego prats on 12/8/15.
//  Copyright © 2015 diego prats. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var switchField: UISwitch!
    
    
    //create delegates
    let zipCodeDelegate = ZipCodeDelegate()
    let cashFieldDelegate = CashFieldDelegate()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.switchField.enabled = true
        self.textField1.delegate = zipCodeDelegate
        self.textField2.delegate = cashFieldDelegate
        self.textField3.delegate = self
        
        
    }

    @IBAction func toggleSwitch(sender: AnyObject) {
        
        if !(self.switchField.on){
            self.textField3.enabled = false
        } else {
            self.textField3.enabled = true
        }
        
        
    }
    
   

}

