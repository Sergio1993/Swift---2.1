//: Playground - noun: a place where people can play

import UIKit

/*Tarea 0

Comprueba si las siguientes propiedades y métodos devuelven el valor correspondiente (o no). Toma una decisión en cada caso. Utiliza optional chaining para ello.

.getPerson()
area
graduated
.allergicMedArray()
music
*/
class Person {
    var area :Int?
    var graduated : String?
    var music = "Mozard"
    var persona : String?
    var allergic :String?
    init(persona : String, allergic: String){
        self.persona = persona
        self.allergic = allergic
    }
    func getPerson() -> String?{
        return persona!
    }
    func allergicMedArray() -> String?{
        return allergic!
    }
}

class Alumno {
    var persona : Person?
}

let p1 = Person(persona: "personaUno", allergic: "allergic")
if let retorno = p1.getPerson() {
    print("Persona tiene \(retorno) ")
} else {
    print("No hay personas")
}
let area = p1.area
let alumnoUno = Alumno()
var estaGraduado = alumnoUno.persona?.graduated
if let retorno = p1.allergicMedArray() {
    print("Alumno tiene \(retorno) ")
} else {
    print("No hay alumnos")
}
estaGraduado = alumnoUno.persona?.music


/*
Tarea 1

En un array de 10 Vehículos, cuenta los que sean de tipo Coche y de tipo Embarcación. Utiliza para ello el operador is. Si es un Coche, imprime su marca.

Asumimos que los Coches y Embarcaciones son Vehículos.
*/

class Coche {
    var marca : String?
    init (marca : String){
        self.marca = marca
    }
}

class Embarcacion {
    var marca : String?
    var tipo : String?
    init (marca: String, tipo : String){
        self.marca = marca
        self.tipo = tipo
    }
}

let vehiculos = [
    Coche (marca: "Opel"),
    Embarcacion(marca: "Galeo", tipo: "Ferry"),
    Coche(marca: "Skoda"),
    Coche(marca: "BMW"),
    Embarcacion(marca: "Astec", tipo: "Lancha"),
    Embarcacion(marca: "Stingray", tipo: "Moto de agua"),
    Coche(marca: "Toyota"),
    Embarcacion(marca: "Sea ray", tipo: "yate"),
    Coche(marca: "Hyunday"),
    Coche(marca: "Audi")
]

var numeroCoches = 0
var numeroEmbarcaciones = 0

for i in vehiculos {
    if i is Coche {
        numeroCoches++
    } else if i is Embarcacion {
        numeroEmbarcaciones++
    }
}

print("EL array vehiculos tiene \(numeroCoches) coches y \(numeroEmbarcaciones) embarcaciones")
/*
Tarea 2

En iOS ¿Qué es un segue?
es el flujo de transicion entre dos vistas

*/
