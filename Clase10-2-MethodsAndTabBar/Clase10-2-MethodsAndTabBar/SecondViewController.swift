//
//  SecondViewController.swift
//  Clase10-2-MethodsAndTabBar
//
//  Created by Sergio Pita on 27/11/15.
//  Copyright © 2015 Sergio Pita. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelSecondView: UILabel!
    var contador = 0
    
    override func viewDidAppear(animated: Bool) {
        // Do any additional setup after loading the view, typically from a nib.
        // Bloque para extraer hora, minutos y segundos de un NSDate a traves de un NSCalendar
        contador++
        labelSecondView.text = "contador \(contador)";

    }


}

