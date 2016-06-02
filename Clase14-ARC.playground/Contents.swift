//: Playground - noun: a place where people can play

import UIKit

//TAREA 0
//Crea intencionalmente un ciclo de referencia fuerte entre dos clases.

class Mamifero {
    var tipo: String
    init(tipo: String) {
        self.tipo = tipo
        print("\(tipo) se esta initialized")
        
    }
    var mamifero: Persona?
    deinit {
        print("\(tipo) se esta deinitialized")
        
    }
}

class Persona {
    var nombre: String
    init(nombre: String) {
        self.nombre = nombre
        print("\(nombre) se esta initialized")
        
    }
    var persona: Mamifero?
    deinit {
        print("\(nombre) se esta deinitialized")
        
    }
}

var tipo: Mamifero?
var jose: Persona?

tipo = Mamifero(tipo: "humano")
jose = Persona(nombre: "Jose")

tipo!.mamifero = jose
jose!.persona = tipo

tipo = nil
jose = nil

//Explica en cada caso como sucede este.
//creamos dos clases Mamifero y Persona, con sus variables, su init y su deinit
//creamos una variable mamifero opcinal de tipo Persona y una variable opcional de tipo Mamifero en la clase Persona
//Después se define dos variables de tipo opcional llamadas tipo y jose, que se establecen como Mamifero y Persona. Ambas variables tienen un valor inicial de cero, en virtud de ser opcional
//Ahora se crea una instancia específica persona  y una instancia Mamifero y asignamos estas nuevas instancias a las variables jose y tipo
//ahora tenemos las 4 referencias fuertes, tendriamos primero una referencia fuerte entre var jose y persona, luego otra de tipo y Mamifero y por ultimo una referencia fuerte de la clase Mamifero a persona y viceversa

//Tarea 1
//Crea intencionalmente un ciclo de referencia fuerte entre tres clases.
//Explica en cada caso como sucede este.

class Kraken {
    var invocar : Int?
    
    init(invocar: Int) {
        self.invocar = invocar
        print("\(invocar) se esta initialized")
        
    }
    
    var krakenUno: Tentaculo?
    
    deinit {
        print("\(invocar) se esta deinitialized")
        
    }
}

class Tentaculo {
    var numeroTentaculos : Int?
    
    init(numeroTentaculos: Int) {
        self.numeroTentaculos = numeroTentaculos
        print("\(numeroTentaculos) se esta initialized")
        
    }
    
    var krakenDos: Ventosa?
    
    deinit {
        print("\(numeroTentaculos) se esta deinitialized")
        
    }
}

class Ventosa {
    var numeroVentosas : Int?
    
    init(numeroVentosas: Int) {
        self.numeroVentosas = numeroVentosas
        print("\(numeroVentosas) se esta initialized")
        
    }
    
    var krakenTres: Kraken?
    
    deinit {
        print("\(numeroVentosas) se esta deinitialized")
        
    }
}

var referencia1: Kraken?
var referencia2: Tentaculo?
var referencia3: Ventosa?

referencia1 = Kraken(invocar: 1)
referencia2 = Tentaculo(numeroTentaculos: 8)
referencia3 = Ventosa(numeroVentosas: 500)

referencia1!.krakenUno = referencia2
referencia2!.krakenDos = referencia3
referencia3!.krakenTres = referencia1

referencia1 = nil
referencia2 = nil
referencia3 = nil
