//
//  GuardarClientes.swift
//  ProyectoFacturacion
//
//  Created by Sergio Pita on 22/10/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import Foundation

class GuardarClientes : NSObject {
    
    var nombre : String
    var apellido : String
    
    init(nombre: String, apellido: String){
        self.nombre = nombre
        self.apellido = apellido
    }
    
    func encodeWithCoder(_ aCoder: NSCoder) {
        aCoder.encode(nombre, forKey: "nombre")
        aCoder.encode(apellido, forKey: "apellido")
    }
    
    required init(coder aDecoder:NSCoder) {
        self.nombre = aDecoder.decodeObject(forKey: "nombre") as! String
        self.apellido = aDecoder.decodeObject(forKey: "apellido") as! String
    }
}
