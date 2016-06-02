//
//  ViewController.swift
//  Clase25-UIAlertController
//
//  Created by Sergio Pita on 28/4/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlert(sender: UIButton) {
        // create the alert
        /*Tarea 0
        
        Crea un alert que muestre dos botones, uno para cancelar la operación y que llame al método cancelar() y otro que muestre un alert que diga “Correcto” con un botón de OK.*/
        
        let alert = UIAlertController(title: "UIAlertController", message: "Would you like to continue learning how to use iOS alerts?", preferredStyle: UIAlertControllerStyle.Alert)
        
        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
        
        /*
        Tarea 1
        
        Crea una clase con un método estático (class method) que reciba un titulo, un mensaje, y el texto de un botón y muestre un alert standard.
        
        Utiliza el método en uno de tus ViewController.
        */

    }
}

