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
    
    override func viewDidAppear(_ animated: Bool) {
        // Do any additional setup after loading the view, typically from a nib.
        // Bloque para extraer hora, minutos y segundos de un NSDate a traves de un NSCalendar
        contador += 1
        labelSecondView.text = "contador \(contador)";

    }


}

