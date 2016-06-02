//
//  ViewController3.swift
//  Clase13-SegueAmano
//
//  Created by Sergio Pita on 24/12/15.
//  Copyright © 2015 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBAction func boton(sender: AnyObject) {
        performSegueWithIdentifier("GoView1", sender: nil)
    }
    

}
