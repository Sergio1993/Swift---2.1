//
//  ViewController.swift
//  Clase0-HolaMundo
//
//  Created by Sergio Pita on 19/9/15.
//  Copyright (c) 2015 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var texto: UITextField!

    @IBAction func boton(sender: AnyObject) {
        
        if (texto.text == ""){
            var alert = UIAlertController(
                title: "Alerta",
                message: "EIntroduce algun mensaje en el campo de texto",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            // Mostramos la alerta en pantalla de forma animada
            self.presentViewController(alert, animated: true, completion: nil)
        }else {
            
        label.text = texto.text;
        texto.text = "";
        
        }
        
    }
    
}

