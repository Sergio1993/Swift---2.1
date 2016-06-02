//: Playground - noun: a place where people can play

import UIKit

//Tarea 0
//Define una clase con tres deinitializers.

class  Coche{
    
    var motorApagado = false
    var lucesEncendidas = true
    var cocheAbierto = true
    
    deinit {
        print("Apagamos las luces del coche")
        lucesEncendidas = false
    }
    
    //No se puede mas de un deinit, ya que uno desinit todos los objetos
    
    /*deinit {
        print("apagamos el motor")
        motorApagado = true
    }
    
    deinit {
        print("Cerramos el coche")
        cocheAbierto = false
    }*/
    
}

//Tarea 1
//Define una clase con un deinitializer.
//En este imprime por consola cuando se desasigne el objeto.
//Instancia tres objetos de esta clase.

class Jugador {
    var nombre: String
    
    init (nombre : String){
        self.nombre = nombre
        print("Creacion del jugador")
    }
    
    deinit {
        print("Destrucion del objeto jugador \(nombre)")
    }
}

var jugador1 : Jugador? = Jugador(nombre: "pepe")

print(jugador1!.nombre)

jugador1 = nil

var jugador2 : Jugador? = Jugador(nombre: "Sergio")

print(jugador2!.nombre)

jugador2 = nil

var jugador3 : Jugador? = Jugador(nombre: "Julian")

print(jugador3!.nombre)

jugador3 = nil





