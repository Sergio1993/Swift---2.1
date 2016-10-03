//: Playground - noun: a place where people can play

import UIKit

//Tarea 0

//Recorre con un for in los elementos de un rango cerrado entre 1 y 10.

for indice in 1...10{
    print("\(indice) por 5 es \(indice * 5)")
}

//Tarea 1

//Recorre con un for in los elementos de un rango abierto entre 5 y el número de caracteres del String “Hola mundo!!!".

let saludo = "hola mundo!!!"

print("numero de caracteres es \(count(saludo))")


for cadena in 5...count(saludo){
    print(cadena)
}

//Tarea 2

//Comprueba si existe el sufijo “hola” y prefijo “mundo!!!” en el String “Hola mundo!!!”.

if (saludo.hasPrefix("hola")){
    print("Tiene el prefijo hola")
}

if (saludo.hasSuffix("mundo!!!")){
    print("Tiene el sufijo mundo")
}

//Tarea 3

//Crea un array de elementos Int, sin valores.

var miArray = [Int]()

//Tarea 4

//Utilizando el método de array append (agregar) inserta en el array los valores previamente creados de la Tarea 2.
//Utiliza el mismo for in para ello.

//var miArray :[Int] = [0];

for cadena in 5...count(saludo){
    miArray.append(cadena)
}

//miArray.removeAtIndex(0)

print(miArray)

//Tarea 5

//Crea un array de 5 elementos bool, literal.

var miArrayDos = [true, false, true, true, false]

//Tarea 6

//Comprueba si está vacío, con el método isEmpty y count. (Ambos por separado).

if miArrayDos.isEmpty {
    print("El array no contiene elementos")
}else{
    print("el array no esta vacio")
}

if (miArrayDos.count == 0){
    print("El array no contiene elementos")
}else{
    print("el array no esta vacio")
}


//Tarea 7

//Añade (+) al array de valores bool el siguiente array [false, true, false]


var otroArray = [false, true, false]

miArrayDos += otroArray

print(miArrayDos)
//Tarea 8

//Elimina su último elemento.
var ultimo = miArrayDos.count

miArrayDos.remove(at: ultimo-1)



