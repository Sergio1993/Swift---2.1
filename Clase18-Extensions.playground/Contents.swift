//: Playground - noun: a place where people can play

import UIKit

/*Tarea 0

Extiende la clase Array de Swift (Array) y añade un nuevo método contar() que devuelva la cantidad de elementos que contiene el array.

Demuestra su implementación con ejemplos.*/

extension Array {
    mutating func contar() -> Int{
        return self.count
    }
}

var some : [Int] = [1,1,1,1,1,1]

print(some.contar())

/*
Tarea 1

Extiende el tipo String de Swift y añade un nuevo método contar() que devuelva la cantidad de caracteres que contenga el string.

Demuestra su implementación con ejemplos.*/

extension String {
    mutating func contar() -> Int{
        return self.characters.count
    }
}

var pep = "sdaas"

print(pep.contar())

/*
Tarea 2

Extiende el tipo String de Swift y añade una propiedad numeroDeAses que contenga la cantidad de caracteres ‘a’ ó ‘A' que tenga el string.

Demuestra su implementación con ejemplos.*/

extension String {
    
    mutating func contains(a: String) -> Int
    {
        var contador = 0
        for character in a.characters {
            if (character == "a" || character == "A"){
                contador+=1
            }
        }
        return contador
    }
    
}

var a = "daaahjlhlksf"

print(a.contains("asdasdaaaaa"))
/*
Tarea 3

Extiende el tipo Int de Swift y añade un nuevo método oddNumbers() que convierta en impar el número en cuestión (si es par) sino, lo deje sin efecto.

Demuestra su implementación con ejemplos.*/


extension Int {
    var par: Int {return self % 2}
    func oddNumbers(numero : Int) -> Int{
        let numeroImpar = 1
        if ( numero % 2 == 0){
            return numero + numeroImpar
        }else{
            return numero
        }
        
    }
}
var someInt = 4

print(someInt.oddNumbers(4))
