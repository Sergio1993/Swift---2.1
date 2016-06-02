//
//  ViewController.swift
//  Clase23-Delegation1
//
//  Created by Sergio Pita on 13/4/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if(textField.tag == 1){
            label.text = textField.text!+"1"
        }else if (textField.tag == 2){
            label.text = textField.text!+"2"
        }else{
            label.text = textField.text!+"3"
        }
        return false
    }

}

