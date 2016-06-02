//
//  ViewController.swift
//  Clase03-OpcionalesyAutoLayout
//
//  Created by Sergio Pita on 1/10/15.
//  Copyright (c) 2015 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    
    @IBAction func presionar(sender: AnyObject) {
        
        etiqueta.textColor = UIColor.whiteColor()
        etiqueta.backgroundColor = UIColor.blackColor()
        view.backgroundColor = UIColor.redColor()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

