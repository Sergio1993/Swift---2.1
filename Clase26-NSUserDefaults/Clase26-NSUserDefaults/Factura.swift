//
//  Empresa.swift
//  Clase26-NSUserDefaults
//
//  Created by Sergio Pita on 14/5/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import Foundation

class Factura : NSObject {
    
    var numeroFactura = 0
    var nombreFactura = ""
    var descripcion = ""
    var importe = 0.0
    
    
    init(numFactura: Int, nF: String, des: String,  im: Double){
        self.numeroFactura = numFactura
        self.nombreFactura = nF
        self.descripcion = des
        self.importe = im
    }
    
    func encodeWithCoder(_ aCoder: NSCoder) {
        aCoder.encode(numeroFactura, forKey: "numeroFactura")
        aCoder.encode(nombreFactura, forKey: "nombreFactura")
        aCoder.encode(descripcion, forKey: "descripcion")
        aCoder.encode(importe, forKey: "importe")
    }
    
    required init(coder aDecoder:NSCoder) {
        numeroFactura = aDecoder.decodeObject(forKey: "numeroFactura") as! Int
        nombreFactura = aDecoder.decodeObject(forKey: "nombreFactura") as! String
        descripcion = aDecoder.decodeObject(forKey: "descripcion") as! String
        importe = aDecoder.decodeObject(forKey: "importe") as! Double
    }
}
