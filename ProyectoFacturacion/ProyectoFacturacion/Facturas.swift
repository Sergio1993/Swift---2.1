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
    
    
    var nombresArray:[String] = [String]()
    var apeArray:[String] = [String]()
    
    var nombre: String = ""
    var apellido: String = ""
    
    //var userDefaults = UserDefaults.standard
    
    @IBAction func done(_ segue:UIStoryboardSegue) {
        nombresArray.append(nombre)
        apeArray.append(apellido)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //tablewView.delegate = self
        //tablewView.dataSource = self
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
        //celda.textLabel?.text = nombresArray[indexPath.row]
        //celda.detailTextLabel?.text = apeArray[indexPath.row]
        
        return celda
    }
    @IBAction func btnGuardar(_ sender: AnyObject) {
        
        
        
    }


}

