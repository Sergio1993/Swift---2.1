//: Playground - noun: a place where people can play

import UIKit

/*Tarea 0

Define un protocolo EuroCarProtocolo que requiera a los tipos que lo adopten:

1 Propiedad de tipo Coche, gettable.
1 Propiedad de tipo String, gettable y settable.

Crea una clase y una estructura que adopten y conformen este protocolo.

Instancia ejemplos en cada caso.
*/
class Vehiculo {
    let marca: String
    let modelo: String
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }

}

protocol EuroCarProtocolo {
    var coche: Vehiculo {get}
    var matricula: String { get set}
    
}

class Coche: Vehiculo, EuroCarProtocolo {
    
    let coche = Vehiculo(marca: "Opel", modelo: "Astra")
    var matricula = "4298-FFK"

}

struct Cars: EuroCarProtocolo {
    let coche = Vehiculo(marca: "Opel", modelo: "Astra")
    var matricula : String
}

let cocheUno = Vehiculo(marca: "Skoda", modelo: "Octavia")
let cocheDos = Cars(matricula: "4298-GGG")


/*
Tarea 1

Define un protocolo Matematica que requiera a los tipos que lo adopten:

1 Método de instancia Descripción (devuelve string).
1 Método de tipo Cuadrado que reciba un Double y devuelva el cuadrado de este.

Crea una clase y una estructura que adopten y conformen este protocolo.

Instancia ejemplos en cada caso.
*/


protocol Matematica {
   func descripcion() -> String
   static func cuadrado(numero: Double) -> Double
}

class Figuras: Matematica {
    
    var descripcionFigura : String
    var cuadradoFigura: Double
    
    init(descripcionFigura: String, cuadradoFigura: Double){
        self.descripcionFigura = descripcionFigura
        self.cuadradoFigura = cuadradoFigura
    }
    
    func descripcion() -> String {
        print("La figura que vamos a analizar es: \(descripcionFigura)")
        return descripcionFigura
    }
    static func cuadrado(numero: Double) -> Double {return numero*numero}
}

let cuadrado = Figuras(descripcionFigura: "Cuadrado", cuadradoFigura: 2.0)
cuadrado.descripcion()
print(Figuras.cuadrado(7.0))

struct FigurasGeo: Matematica {
    
    var descripcionFigura: String
    var cuadradoFigura: Double
    
    func descripcion() -> String {
        print("La figura que vamos a analizar es: \(descripcionFigura)")
        return descripcionFigura
    }
    static func cuadrado(numero: Double) -> Double {return numero*numero}
}

let figu = FigurasGeo(descripcionFigura: "Triangulo", cuadradoFigura: 7.0)
figu.descripcion()
print(FigurasGeo.cuadrado(3.4))


/*
Tarea 2

Define un protocolo que requiera a los tipos que lo adopten:

1 Propiedad de instancia.
1 Método de instancia.
1 Método de tipo.
1 Método que modifique un dato de la instancia.

Instancia una estructura y una clase que adopten este protocolo y utiliza todos sus métodos y propiedades en cada caso.
*/

protocol tareaDos{
    var color : UIColor {get set}
    func metodoDeInstancia()
    static func metodoDeTipo()
    mutating func cambiarColor()
    
}

class TareaDos: tareaDos {
    
    var color = UIColor.blueColor()
    
    
    func metodoDeInstancia() {
        print("Esto es un metodo de instancia en una clase")
    }
    
    static func metodoDeTipo() {
        print("Esto es un metodo de tipo en una clase")
    }
    
    func cambiarColor() {
        color = UIColor.blackColor()
        print("Esto es un metodo mutating en una clase")
    }
}

struct TareaDosDos: tareaDos {
    var color = UIColor.blueColor()
    
    func metodoDeInstancia() {
        print("Esto es un metodo de instancia en una struct")
    }
    
    static func metodoDeTipo() {
        print("Esto es un metodo de tipo en una struct")
    }
    
    mutating func cambiarColor() {
        color = UIColor.redColor()
        print("Esto es un metodo mutating en una struct")
    }
}

let objetoClase = TareaDos()
objetoClase.metodoDeInstancia()
objetoClase.cambiarColor()
TareaDos.metodoDeTipo()


var objetoStruct = TareaDosDos()
objetoStruct.metodoDeInstancia()
objetoStruct.cambiarColor()
TareaDosDos.metodoDeTipo()
