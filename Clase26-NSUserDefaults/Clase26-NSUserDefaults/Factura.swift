//
//  Empresa.swift
//  Clase26-NSUserDefaults
//
//  Created by Sergio Pita on 14/5/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import Foundation

class Factura : NSObject {
    
    var numeroFactura : Int
    var nombreFactura : String
    var descripcion : String
    var importe : Float
    
    
    init(numFactura: Int, nF: String, des: String,  im: Float){
        self.numeroFactura = numFactura
        self.nombreFactura = nF
        self.descripcion = des
        self.importe = im
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(numeroFactura, forKey: "numeroFactura")
        aCoder.encodeObject(nombreFactura, forKey: "nombreFactura")
        aCoder.encodeObject(descripcion, forKey: "descripcion")
        aCoder.encodeObject(importe, forKey: "importe")
    }
    
    required init(coder aDecoder:NSCoder) {
        numeroFactura = aDecoder.decodeObjectForKey("numeroFactura") as! Int
        nombreFactura = aDecoder.decodeObjectForKey("nombreFactura") as! String
        descripcion = aDecoder.decodeObjectForKey("descripcion") as! String
        importe = aDecoder.decodeObjectForKey("importe") as! Float
    }
}