//
//  ViewController.swift
//  Clase02-Variables y Xcode
//
//  Created by Sergio Pita on 25/9/15.
//  Copyright (c) 2015 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Etiqueta: UILabel!
    @IBOutlet weak var botonUno: UIButton!
    
    var contador = 0;

    @IBAction func botonCambioColor(sender: AnyObject) {
        if (contador == 0){
            Etiqueta.backgroundColor = UIColor.blueColor()
            Etiqueta.textColor = UIColor.whiteColor()
            Etiqueta.text = "Bienvenido a mi aplicacion"
            view.backgroundColor = UIColor.yellowColor()
            botonUno.backgroundColor = UIColor.redColor()
            contador++
        }else if (contador == 1){
            Etiqueta.backgroundColor = UIColor.blueColor()
            Etiqueta.textColor = UIColor.whiteColor()
            Etiqueta.text = "Adios de mi aplicacion"
            view.backgroundColor = UIColor.blueColor()
            botonUno.backgroundColor = UIColor.redColor()
            contador--
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       view.backgroundColor = UIColor.brownColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

