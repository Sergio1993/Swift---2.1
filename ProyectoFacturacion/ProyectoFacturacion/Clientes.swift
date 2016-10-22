//
//  Clientes.swift
//  ProyectoFacturacion
//
//  Created by Sergio Pita on 24/9/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class Clientes: UIViewController, UITableViewDataSource {
    
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
        print("DONE NOMBRE: "+nombre)
        print("DONE APELLIDO: "+apellido)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad NOMBRE: "+nombre)
        print("viewDidLoad APELLIDO: "+apellido)
        saveCustomers(nom: nombre, ape: apellido)
        tableClientes.dataSource = self
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableClientes.dataSource = self
        print("viewWillAppear NOMBRE: "+nombre)
        print("viewWillAppear APELLIDO: "+apellido)
        tableClientes.reloadData()
        //saveCustomers()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clientesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaReusable", for: indexPath)
        
        if let data = UserDefaults.standard.object(forKey: "clientes") as? Data {
            if let clientes = NSKeyedUnarchiver.unarchiveObject(with: data) as? [GuardarClientes]
            {
                print("tableView NOMBRE: "+nombre)
                print("tableView APELLIDO: "+apellido)
                celda.textLabel!.text = "\( clientes[(indexPath as NSIndexPath).row])"
                celda.detailTextLabel!.text = "\( clientes[(indexPath as NSIndexPath).row])"
                //celda.textLabel!.text = nombresArray[(indexPath as NSIndexPath).row]
                //celda.detailTextLabel!.text = apeArray[(indexPath as NSIndexPath).row]
            }
        }
        
        return celda
    }
    
    func saveCustomers(nom: String, ape: String){
        
        print("saveCustomers NOMBRE: "+nombre)
        print("saveCustomers APELLIDO: "+apellido)
        
        let item1 = GuardarClientes(nombre: nom, apellido: ape)
        
        
        clientesArray.append(item1)
        
        let placesData = NSKeyedArchiver.archivedData(withRootObject: clientesArray)
        UserDefaults.standard.set(placesData, forKey: "clientes")
        
    }

    
    
}
