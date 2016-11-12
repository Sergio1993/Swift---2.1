//
//  Clientes.swift
//  ProyectoFacturacion
//
//  Created by Sergio Pita on 24/9/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class Clientes: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableClientes: UITableView!
    
    
    var nombresArray:[String] = [String]()
    var apeArray:[String] = [String]()
    var clientesArray = [GuardarClientes]()
    var nombre: String = ""
    var apellido: String = ""
    
    @IBAction func done(_ segue:UIStoryboardSegue) {
        //nombresArray.append(nombre)
        //apeArray.append(apellido)
        saveCustomers(nom: nombre, ape: apellido)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //saveCustomers(nom: nombre, ape: apellido)
        tableClientes.delegate = self
        tableClientes.dataSource = self
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableClientes.dataSource = self
        tableClientes.reloadData()
       
        
    }
    
    
    @nonobjc func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clientesArray.count
    }
    
    func tableView(tableView: UITableViewDelegate, didDeselectRowAtIndexPath indexPath: IndexPath) {

        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "clientesID") as! Clientes
        navigationController?.pushViewController(destination, animated: true)
        print("You deselected cell #\(indexPath.row)!")
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaReusable", for: indexPath)
        if let data = UserDefaults.standard.object(forKey: "clientes") as? Data {
            if let clientes = NSKeyedUnarchiver.unarchiveObject(with: data) as? [GuardarClientes]
            {
                celda.textLabel!.text = "\( clientes[(indexPath as NSIndexPath).row].nombre)"
                celda.detailTextLabel!.text = "\( clientes[(indexPath as NSIndexPath).row].apellido)"
            }
        }
        
        return celda
    }

    
    
    func saveCustomers(nom: String, ape: String){
        
        let item1 = GuardarClientes(nombre: nom, apellido: ape)
        
        
        clientesArray.append(item1)
        
        let placesData = NSKeyedArchiver.archivedData(withRootObject: clientesArray)
        UserDefaults.standard.set(placesData, forKey: "clientes")
        
    }


    
    
}
