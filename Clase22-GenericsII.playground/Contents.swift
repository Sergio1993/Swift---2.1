//: Playground - noun: a place where people can play

import UIKit

//Tarea 0
//Extiende un tipo genérico, utiliza el tipo indeterminado (T) en tu extension.

struct Pila<T> {
    var arrayCoche = [T]()
    mutating func push(coche: T) {
        arrayCoche.append(coche)
    }
    mutating func pop() -> T {
        return arrayCoche.removeLast()
    }
}

extension Pila {
    var topItem: T? {
        return arrayCoche.isEmpty ? nil : arrayCoche[arrayCoche.count - 1]
    }
}


//Tarea 1
//Crea un nuevo tipo genérico con dos restricciones. Los tipos que acepte este nuevo tipo deben ser:

//- Clase o Subclase de Coche.
//- Implementa el protocolo ABS.
protocol ABS{
    var activo : Bool {get}
}

class Coche {
    var marca :String?
}

struct Stack<T, Coche> : ABS{
    var items = [T]()
    var marca :String?
    var activo : Bool
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}
