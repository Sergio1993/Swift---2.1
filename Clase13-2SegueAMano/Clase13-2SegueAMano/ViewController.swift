//
//  ViewController.swift
//  Clase13-2SegueAMano
//
//  Created by Sergio Pita on 24/12/15.
//  Copyright © 2015 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func botonRojo(sender: AnyObject) {
        performSegueWithIdentifier("GoView2", sender: "rojo")
    }
    
    
    @IBAction func botonAzul(sender: UIButton) {
        performSegueWithIdentifier("GoView2", sender: "azul")
    }
    
    @IBAction func botonVerde(sender: UIButton) {
        performSegueWithIdentifier("GoView2", sender: "verde")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destinationViewController = segue.destinationViewController as? VC2ViewController {
            
            if let color = sender as? String {
                
                switch color {
                    case "rojo":
                        destinationViewController.view.backgroundColor = UIColor.redColor()
                    
                    case "azul":
                        destinationViewController.view.backgroundColor = UIColor.blueColor()
                    
                    case "verde":
                        destinationViewController.view.backgroundColor = UIColor.greenColor()
                    
                    default:
                        print("EMPTY")
                }
                
            }
        }
    }


}

