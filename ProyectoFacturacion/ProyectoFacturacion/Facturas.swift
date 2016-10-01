//
//  SecondViewController.swift
//  ProyectoFacturacion
//
//  Created by Sergio Pita on 18/9/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource{
    
    @IBOutlet weak var tablewView: UITableView!
    
    var nombre = String()
    var apellidos = String()
    
    var nombresArray:[String] = [String]()
    var apeArray:[String] = [String]()
    
    var userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //self.tableview.delegate = self
        tablewView.dataSource = self
        
        nombre = userDefaults.string(forKey: "userName") ?? "-"
        apellidos = userDefaults.string(forKey: "apellidos") ?? "-"
        
        nombresArray.append(nombre)
        apeArray.append(apellidos)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        tablewView.reloadData()
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombresArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaReusable", for: indexPath)

        celda.textLabel?.text = nombresArray[indexPath.row]
        celda.detailTextLabel?.text = apeArray[indexPath.row]
        
        return celda
    }
    @IBAction func btnGuardar(_ sender: AnyObject) {
        
        
        
    }


}

