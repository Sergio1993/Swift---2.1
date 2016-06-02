//
//  FirstViewController.swift
//  Clase07-02-funciones
//
//  Created by Sergio Pita on 9/11/15.
//  Copyright (c) 2015 Sergio Pita. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var labelHora: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        // Bloque para extraer hora, minutos y segundos de un NSDate a traves de un NSCalendar
        let fecha = NSDate()
        let calendario = NSCalendar.currentCalendar()
        let componentes = calendario.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond, fromDate: fecha)
        let hora = componentes.hour
        let minutos = componentes.minute
        let segundos = componentes.second
        let horaActual: String = "\(hora):\(minutos):\(segundos)"
        labelHora.text = horaActual
    }

}

