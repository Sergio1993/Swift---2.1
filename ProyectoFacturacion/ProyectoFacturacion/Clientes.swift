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
    
    var nombre: String = ""
    var apellido: String = ""
    
    
    @IBAction func done(_ segue:UIStoryboardSegue) {
        nombresArray.append(nombre)
        apeArray.append(apellido)
    }
    
    override func viewDidLoad() {
        tableClientes.dataSource = self
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableClientes.dataSource = self
        tableClientes.reloadData()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombresArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaReusable", for: indexPath)
        
        celda.textLabel!.text = nombresArray[(indexPath as NSIndexPath).row]
        celda.detailTextLabel!.text = apeArray[(indexPath as NSIndexPath).row]
        
        return celda
    }

    
    
}
