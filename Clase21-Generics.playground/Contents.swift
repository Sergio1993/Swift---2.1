//: Playground - noun: a place where people can play

import UIKit

/*
Tarea 0

Crea una función genérica que reciba un parámetro de cualquier tipo e imprima este con un mensaje:
"El valor de su variable es ___"
*/

func imprimirMensaje<T>(a: T){
    print("El valor de su variable es \(a)")
}
var a = "HOLA"
imprimirMensaje(a)

/*
Tarea 1

Crea una función genérica que reciba dos parámetros de cualquier tipo e imprima estos con un mensaje:
"El valor de su variable es ___"

*/

func imprimirMensajeDos<T>(inout a: T, inout b: T){
    print("El valor de su variable es \(a) y \(b)")
}
var b = "ADIOS"
imprimirMensajeDos(&a, b: &b)

/*
Tarea 2

Crea una estructura de tipo genérica para construir un queue.

Un queue (una cola) es el antónimo de un Stack; Un queue es LIFO (First In First Out)

Donde el primer elemento insertado será el primero en salir. (Push / Pop)

http://en.wikipedia.org/wiki/Queue_%28abstract_data_type%29
*/
struct Pila<Element> {
    var arrayCoche = [Element]()
    mutating func push(coche: Element) {
        arrayCoche.append(coche)
    }
    mutating func pop() -> Element {
        return arrayCoche.removeLast()
    }
}

var pilaCoches = Pila<String>()
pilaCoches.push("Mazda")
pilaCoches.push("Skoda")
pilaCoches.push("BMW")
pilaCoches.push("TOYOTA")

pilaCoches.pop()

/*
Tarea 3

Por convención, ¿Como deben ser los nombres de los indicadores de tipos genéricos?

Cita ejemplos.

Always give type parameters upper camel case names to indicate that they are a placeholder for a type, not a value.
*/


/*
Tarea 4 - Opcional

Intenta hacer una estructura genérica “diccionario” que funcione como un diccionario. Key - Value.
*/
struct Dictionary<Key : Hashable, Value>{
    var arrayCoche = [Key: Value]()
    mutating func push(coche: Key, modelo: Value) {
        arrayCoche = [coche: modelo]
    }
    /*mutating func pop() -> (Key, Value) {
        return arrayCoche.removeLast()
    }*/

}



