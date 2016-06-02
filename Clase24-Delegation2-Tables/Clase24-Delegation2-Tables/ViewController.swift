//
//  ViewController.swift
//  Clase24-Delegation2-Tables
//
//  Created by Sergio Pita on 16/4/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var paisesAmerica = ["Argentina", "Brazil", "EEUU", "Canada", "Chile", "Mexico", "Jamaica", "Uruguay", "Paraguay", "Perú", "Cuba", "Costa Rica", "Panamá", "Ecuador", "Bolivia"]
    
    let capitalAmerica = ["Buenos aires", "Brasilia", "Washington D.C.", "Ottawa", "Santiago", "Ciudad de Mexico", "Kignston", "Montevideo","Asunción", "Lima","La Habana", "San José", "Ciudad de Panamá","Quito", "Sucre"]
    
    var imagenesPaises = ["ar", "br", "us", "ca", "cl", "mx", "jm", "uy", "pr", "pe", "cu", "cr", "pa", "ec", "bo"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paisesAmerica.count
    }
    
    //Ordenar array  
    func before(value1: String, value2: String) -> Bool {
        return value1 < value2;
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCellWithIdentifier("CeldaReusable", forIndexPath: indexPath)
        //paisesAmerica.sortInPlace(before)
        //imagenesPaises.sortInPlace(before)
        celda.textLabel?.text = paisesAmerica[indexPath.row]
        celda.detailTextLabel?.text = capitalAmerica[indexPath.row]
        
        let banderas = UIImage(named: imagenesPaises[indexPath.row])
        celda.imageView?.image = banderas
        
        return celda
    }
    
    

}

