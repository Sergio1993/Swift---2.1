//
//  FirstViewController.swift
//  Clase10-2-MethodsAndTabBar
//
//  Created by Sergio Pita on 27/11/15.
//  Copyright © 2015 Sergio Pita. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var labelFirstView: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        // Do any additional setup after loading the view, typically from a nib.
        // Bloque para extraer hora, minutos y segundos de un NSDate a traves de un NSCalendar
        let fecha = Date()
        let calendario = Calendar.current
        let componentes = (calendario as NSCalendar).components([.hour, .minute, .second], from: fecha)
        let hora = componentes.hour
        let minutos = componentes.minute
        let segundos = componentes.second
        let horaActual: String = "\(hora):\(minutos):\(segundos)"
        labelFirstView.text = horaActual
    }

    

}

