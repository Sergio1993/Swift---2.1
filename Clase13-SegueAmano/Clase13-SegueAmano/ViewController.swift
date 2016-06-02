//
//  ViewController.swift
//  Clase13-SegueAmano
//
//  Created by Sergio Pita on 24/12/15.
//  Copyright © 2015 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func boton(sender: UIButton) {
        performSegueWithIdentifier("GoView2", sender: nil)
    }
    

}

