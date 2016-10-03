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
    
    //var nombre: String = ""
    //var apellido: String = ""
    
    @IBAction func btnGuardar(_ sender: AnyObject) {
        /*
        let array = self.txtNombre.text!
        UserDefaults.standard.set(array, forKey: "userName")
        UserDefaults.standard.synchronize()
        
        let apellidos = self.txtApellidos.text!
        UserDefaults.standard.set(apellidos, forKey: "apellidos")
        UserDefaults.standard.synchronize()
        */
        

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        
        if segue.identifier == "transicion"{
            
            let vistaDosConDato = segue.destination as! SecondViewController
            vistaDosConDato.nombre = txtNombre.text!
            vistaDosConDato.apellido = txtApellidos.text!
            //nombre = txtNombre.text!
            //apellido = txtApellidos.text!
        }
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
