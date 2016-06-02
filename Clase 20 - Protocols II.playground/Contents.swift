//: Playground - noun: a place where people can play

import UIKit

/*Tarea 0

Define un protocolo EmpleadoSeat que requiera a los tipos que lo adopten:

1 Inicializador sin parámetros.
1 Inicializador con los parámetros, nombre, dirección, teléfono, dni.

Instancia ejemplos en cada caso.*/


protocol EmpleadoSeat{
    init()
    init(nombre: String, direccion: String, telefono: String, dni: String)
}

class Consultor: EmpleadoSeat {

    required init(){}
    required init(nombre: String, direccion: String, telefono: String, dni: String) {
       
    }
}

let consultorUno = Consultor(nombre: "sergio", direccion: "camino", telefono: "987897897", dni: "12420869H")

let consultorDos = Consultor()
 let consultorTres = Consultor(nombre: "Pep", direccion: "calle", telefono: "98686868668", dni: "12420325G")


/*
Tarea 1

Crea un array de tipo EmpleadoSeat, almacena en este 3 elementos de distintos tipos pero que adopten todos el protocolo EmpleadoSeat.
*/


let things: [EmpleadoSeat] = [consultorUno, consultorDos, consultorTres]

/*
Tarea 2

Crea una clase Director, dentro de esta define una propiedad almacenada de tipo EmpleadoSeat, la cual va a ser necesaria al inicializar el objeto.

Instancia ejemplos en cada caso.
*/

class Director {
    var puesto : EmpleadoSeat
    
    init(puesto: EmpleadoSeat){
        self.puesto = puesto
    }
}

let directorUno = Director(puesto: consultorUno)


/*
Tarea 3

Extiende los tipos de instancias vistos anteriormente en la Tarea 1, para que adopten el protocolo Descripción el cual va a requerir un método de instancia:

descripción() -> String
*/
protocol Descripcion {
    func descripción() -> String
}

class Persona: Descripcion {
    var descrip : String
    init (descrip: String){
        self.descrip = descrip
    }
    func descripción() -> String {
        return descrip
    }
}
let personaUno = Persona(descrip: "Soy una persona")

let arrayPersonas : [Persona] = [personaUno]

/*
Tarea 4

Crea un nuevo protocolo llamado Martorell que herede del protocolo EmpleadoSeat y requiera una propiedad especialidad de tipo String.

Crea e instancia un nuevo tipo que adopte el recién creado protocolo.
*/
protocol Martorell: EmpleadoSeat{
    var especialidad: String {get set}
    init()
    init(nombre: String, direccion: String, telefono: String, dni: String)
}

class Ciudad: Martorell {
    var especialidad = ""
    required init() {}
    required init(nombre: String, direccion: String, telefono: String, dni: String){
        
    }
    
}
/*
Tarea 5

Extiendo el protocolo EmpleadoSeat y añade la propiedad error de tipo Bool.
*/

extension Ciudad: EmpleadoSeat {
   var error: Bool { return false }
}

