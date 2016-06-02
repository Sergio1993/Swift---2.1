//
//  ViewControler2.swift
//  Clase13-SegueAmano
//
//  Created by Sergio Pita on 24/12/15.
//  Copyright © 2015 Sergio Pita. All rights reserved.
//

import UIKit

class ViewControler2: UIViewController {

    @IBAction func boton(sender: UIButton) {
        performSegueWithIdentifier("GoView3", sender: nil)
    }
    
}
