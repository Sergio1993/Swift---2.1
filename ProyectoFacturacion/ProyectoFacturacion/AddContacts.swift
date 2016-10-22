//
//  AddContacts.swift
//  ProyectoFacturacion
//
//  Created by Sergio Pita on 1/10/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class AddContacts: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtApellidos: UITextField!
    
    var nombre: String = ""
    var apellido: String = ""
    
    @IBAction func btnGuardar(_ sender: AnyObject) {

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        
        let vistaDosConDato = segue.destination as! Clientes
        
        vistaDosConDato.nombre = txtNombre.text!
        vistaDosConDato.apellido = txtApellidos.text!
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
