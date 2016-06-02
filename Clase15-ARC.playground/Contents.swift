//: Playground - noun: a place where people can play

import UIKit

/*
Tarea 0

Crea intencionalmente un potencial ciclo de referencia entre dos clases.

Un Profesor debe tener una Asignatura, pero una Asignatura podría no tener un Profesor (ser nil).

Soluciónalo con una referencia weak.

Crea un diagrama de flujo con los posibles casos de esta relación. Utiliza un software acorde para ello.
*/

class Profesor{
    var nombre : String?
    init (nombre: String){
        self.nombre = nombre
        print("\(nombre) se esta initialized")
    }
    var asignaturaProfe : Asignatura?
    deinit { print("\(nombre!) se esta deinitialized") }
}

class Asignatura {
    var nombreAsignatura: String?
    init(nombreAsignatura: String){
        self.nombreAsignatura = nombreAsignatura
        print("\(nombreAsignatura) se esta initialized")
    }
    weak var asignatura: Profesor?
    deinit { print("\(nombreAsignatura!) se esta deinitialized") }
}

var profesorLengua : Profesor?
var asignaturaLengua : Asignatura?

profesorLengua = Profesor(nombre: "Sergio")
asignaturaLengua = Asignatura(nombreAsignatura : "Lengua")

profesorLengua!.asignaturaProfe = asignaturaLengua
asignaturaLengua!.asignatura = profesorLengua

profesorLengua = nil
asignaturaLengua = nil

/*
Tarea 1

Crea intencionalmente un potencial ciclo de referencia entre dos clases.

Un Perro puede tener un Collar o no, sin embargo un Collar, siempre tiene un Perro.

Soluciónalo con una referencia unowned.

Crea un diagrama de flujo con los posibles casos de esta relación. Utiliza un software acorde para ello.

*/
class Perro {
    var nombre: String?
    init (nombre: String){
        self.nombre = nombre
        print("\(nombre) se esta initialized")
    }
    var collar : Collar?
    deinit { print("\(nombre!) se esta deinitialized") }
}

class Collar {
    var tamanio : String?
    unowned let tipoPerro : Perro
    init(tamanio: String, tipoPerro: Perro){
        self.tamanio = tamanio
        self.tipoPerro = tipoPerro
        print("\(tamanio) se esta initialized")
    }
    
    deinit { print("\(tamanio!) se esta deinitialized") }
    
}

var perroCocker : Perro?
perroCocker = Perro(nombre: "MIKI")
perroCocker!.collar = Collar(tamanio: "mediano", tipoPerro: perroCocker!)

perroCocker = nil
