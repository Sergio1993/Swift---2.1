//
//  ViewController.swift
//  Clase07-Functions
//
//  Created by Sergio Pita on 6/11/15.
//  Copyright (c) 2015 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelHora: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Bloque para extraer hora, minutos y segundos de un NSDate a traves de un NSCalendar
        let fecha = NSDate()
        let calendario = NSCalendar.currentCalendar()
        let componentes = calendario.components([.Hour, .Minute, .Second], fromDate: fecha)
        let hora = componentes.hour
        let minutos = componentes.minute
        let segundos = componentes.second
        let horaActual: String = "\(hora):\(minutos):\(segundos)"
        labelHora.text = horaActual
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

