//
//  ViewController.swift
//  Clase26-NSUserDefaults
//
//  Created by Sergio Pita on 14/5/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var facturaArray = [Factura]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let bbdd = NSUserDefaults.standardUserDefaults()
        //bbdd.setObject(NSKeyedArchiver.archivedDataWithRootObject(a), forKey: "factura")
        
        savePlaces()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return facturaArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaReusable", for: indexPath)
        
        if let data = UserDefaults.standard.object(forKey: "factura") as? Data {
            if let factura = NSKeyedUnarchiver.unarchiveObject(with: data) as? [Factura]
            {
                let sortedFacturas = factura.sorted (by: { $0.numeroFactura < $1.numeroFactura })
                celda.textLabel?.text = "\(sortedFacturas[(indexPath as NSIndexPath).row].nombreFactura)"
                celda.detailTextLabel!.text = "\(sortedFacturas[(indexPath as NSIndexPath).row].descripcion)"
            }
        }
        
        
        return celda
    }
    
    func savePlaces(){
        
        let item1 = Factura(numFactura: 3, nF: "FacturaDos", des: "Esta es una factura de prueba", im: 3.4)
        let item2 = Factura(numFactura: 2, nF: "FacturaTres", des: "Esta es otra factura de prueba", im: 3.5)
        let item3 = Factura(numFactura: 6, nF: "FacturaCuatro", des: "Esta es otra factura de prueba", im: 3.5)
        
        facturaArray.append(item1)
        facturaArray.append(item2)
        facturaArray.append(item3)

        let placesData = NSKeyedArchiver.archivedData(withRootObject: facturaArray)
        UserDefaults.standard.set(placesData, forKey: "factura")
        
    }

}


