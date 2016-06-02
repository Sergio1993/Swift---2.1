//: Playground - noun: a place where people can play

import UIKit

/*Tarea 0

En un array de 10 Vehículos, pero de tipo AnyObject, cuenta los que sean de tipo Coche y de tipo Embarcación. Utiliza para ello el operador as?. Si es un Coche, imprime su marca, si es una embarcación su eslora.

Asumimos que los Coches y Embarcaciones son Vehículos.
*/
print("======================TAREA 0==================================")
class Vehiculos {
    var matricula : String?
    init(matricula : String){
        self.matricula = matricula
    }
}

class Coche: Vehiculos {
    var marca : String?
    init (marca : String, matricula: String){
        self.marca = marca
        super.init(matricula: matricula)
    }
}

class Embarcacion: Vehiculos {
    var eslora : Double?
    init (eslora: Double, matricula: String){
        self.eslora = eslora
        super.init(matricula: matricula)
    }
}

let vehiculos: [AnyObject] = [
    Coche (marca: "Opel", matricula: "121221"),
    Embarcacion(eslora: 3.4, matricula: "121221"),
    Coche(marca: "Skoda", matricula: "121221"),
    Coche(marca: "BMW", matricula: "121221"),
    Embarcacion(eslora: 45.6, matricula: "121221"),
    Embarcacion(eslora: 89.9, matricula: "121221"),
    Coche(marca: "Toyota", matricula: "121221"),
    Embarcacion(eslora: 67.4, matricula: "121221"),
    Coche(marca: "Hyunday", matricula: "121221"),
    Coche(marca: "Audi", matricula: "121221"),
]

for i in vehiculos {
    if let coche = i as? Coche {
        print("Coche: '\(coche.marca!)'")
    } else if let embarcacion = i as? Embarcacion {
        print("Embarcacion: '\(embarcacion.eslora!)'")
    }
}
/*
Tarea 1

En un array de 5 Frutas, pero de tipo Any, cuenta las que sean de tipo Manzana y de tipo Mango. Utiliza para ello el operador as. Si es una Manzana, imprime su color, si es un mango su peso.

Asumimos que las Manzanas y Mangos son Frutas.
*/
print("======================TAREA 1==================================")
var colores = ["Verde", "Rojo", "Naranja", "Amarilla"]
class Frutas {
    var tipo: String?
    init(tipo: String){
        self.tipo = tipo
    }
}
class Manzana: Frutas {
    var color : String
    init(color: String, tipo: String){
        self.color = color
        super.init(tipo: tipo)
    }
}

class Mango: Frutas {
    var peso : Double
    init(peso : Double, tipo: String){
        self.peso = peso
        super.init(tipo: tipo)
    }
}


let frutas: [Any] = [
    Manzana(color: colores[0], tipo: "Golden"),
    Mango(peso: 1.2, tipo: "Tropical"),
    Manzana(color: colores[1], tipo: "Golden"),
    Manzana(color: colores[3], tipo: "Golden"),
    Mango(peso: 0.85, tipo: "Local")
]

for i in frutas {
    switch i {
    case let manzana as Manzana :
        print("Manzana: '\(manzana.color)'")
    case let mango as Mango :
        print("Mango: '\(mango.peso)'")
    default:
        print("No es esa fruta")
    }
}

/*
Tarea 2

¿Qué sucede si falla el casting con as?

Da un error en compilacion

¿Qué sucede si falla el casting con as??
no da un error de compilacion nos devuelve nil
*/

/*
Tarea 3

Explica con tus palabras las diferencias entre Any y AnyObject.
AnyObject es sólo para los tipos de referencia (clases), Any es para ambos tipos de valor y de referencia.

AnyObject representa una instancia de cualquier tipo de clase y any puede representar una entero,un double,  un objeto, una funcion, basicamente cualquier cosa.

¿Podremos utilizar Any en todos los casos donde utilizamos AnyObject?
Yo diria que si, ya que en any podemos icluir lo de anyobject y mas cosas
*/
