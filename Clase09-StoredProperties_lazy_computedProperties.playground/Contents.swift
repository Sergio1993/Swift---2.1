//: Playground - noun: a place where people can play

import UIKit

//Tarea 0
//Diseña una clase de un ejemplo basado en la vida real que tenga, entre otras, una propiedad lazy.
//Instancia el objeto, observa si se crea la propiedad.
//Llama a la propiedad lazy, observa que ocurre.
//Explica lo sucedido.

class Animal {
    var razaAnimal = "razas.dat"
}
class Perro {
    lazy var raza = Animal();
    var nombre = [String]()
}

let miki = Perro()

miki.nombre.append("Pongo")
miki.nombre.append("Miki")
print(miki.raza.razaAnimal)

//Una propiedad lazy almacenada es una propiedad cuyo valor inicial no se calcula hasta la primera vez que se utiliza

//Tarea 1
//Diseña una clase de un ejemplo basado en la vida real que incluya Property observers de una propiedad.
//Asigna valores a esta propiedad y observa como son llamados estos métodos.
class Loteria{
    var premio: Int = 0 {
        willSet {
            print("Va a recibir un premio")
        }
        
        didSet {
            print("Ha recibido el gordo de la loteria")
        }
    }
}

let numeroLoteria = Loteria()
numeroLoteria.premio = 87868


//Tarea 2
//Crea una clase Temperatura que incluya una propiedad calculada para Celsius o Fahrenheit, esta debe devolver o establecer la propiedad almacenada Celsius o Fahrenheit.
//Puedes elegir Celsius almacenada y Fahrenheit calculada o al contrario.
//formula : C = (faren - celsius) * 5/9

class Temperature {
    var farenheit = Double()
    var celcius: Double {
        
        get {
            return (farenheit - 32)/1.8;
        }
        
        set (nuevoValor) {
            farenheit = (nuevoValor * 1.8)+32
        }
    }
}

let calcularTemperatura = Temperature()

calcularTemperatura.celcius = 5
print(calcularTemperatura.farenheit)

calcularTemperatura.farenheit = 23
print(calcularTemperatura.celcius)

