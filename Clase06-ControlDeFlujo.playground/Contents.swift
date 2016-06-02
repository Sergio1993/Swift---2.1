//: Playground - noun: a place where people can play

import UIKit

//Tarea 0
//Crea las siguientes constantes:

//- Un String que guarde una frase célebre.
let fraseCelebre = "Ser o no ser, esa el cuestion"

//- Un array de palabras, de tipo String. De no menos de 10 elementos.
var miArray :[String] = ["uno", "dos","sigue" , "tres", "cuatro", "cinco", "seis", "siete","basta" ,"ocho", "nueve","diez", "once"];

//- Un diccionario de clave dígito Int y valor (el número en cuestión) String. Para todos los números del 1 al 10
var diccionarioString = [1:"uno", 2:"dos", 3:"tres", 4:"cuatro", 5:"cinco", 6:"seis", 7:"siete", 8:"ocho", 9:"nueve", 10:"diez"]

//Tarea 1
//Recorre e imprime con un con for in los caracteres de la frase.
for cadena in fraseCelebre{
    println(cadena)
}

//Tarea 2
//Recorre e imprime con un for los elementos del array pero sólo hasta la mitad de este.

for var index = 0; index < (miArray.count)/2; ++index {
    println(" \(miArray[index])")
}

//Tarea 3
//Recorre e imprime con un for in los valores del diccionario.
//¿Se imprimen en orden? ¿Explica con tus palabras por qué sucede lo que sucede?

for cadena in diccionarioString{
    println(cadena)
}

//no se imprime en orden, no entiendo por que se imprime asi

//Tarea 4
//Comprueba con un switch si los valores del diccionario son pares o impares.
//Agrega los casos necesarios al switch.
//Imprime un mensaje en cada caso.

let indice = diccionarioString.count

switch indice {
case 2,4,6,8,10 :
    println ("es par")
case 1,3,5,7,9:
    println ("es impar")
default :
    print ("No es un numero")
}

//Tarea 5
//Comprueba con un switch si la frase que has creado tiene el prefijo “En la vida”, “Todo el mundo” ó los sufijos “para siempre.”, “nunca.”
var comprobar = String()

if fraseCelebre.hasPrefix("En la vida"){
    comprobar = "En la vida"
}else if fraseCelebre.hasPrefix("Todo el mundo"){
    comprobar = "Todo el mundo"
}else if fraseCelebre.hasSuffix("para siempre."){
    comprobar = "para siempre"
}else if fraseCelebre.hasSuffix("nunca"){
    comprobar = "nunca"
}

switch comprobar {
case "En la vida":
    println ("Tiene el prefijo En la vida")
case "Todo el mundo":
    println ("Tiene el prefijo Todo el mundo")
case "para siempre.":
    println ("Tiene el sufijo para siempre")
case "nunca":
    println ("Tiene el sufijo nunca")
default :
    print ("No empieza por ninguna de esas")
}

//Tarea 6

//Recorre con un for in los valores del array, si se encuentra la palabra “sigue” que comience el bucle de nuevo (continue) y si se encuentra la palabra “basta” pues que detenga el bucle (break).

for i in miArray{
    switch i {
        case "sigue":
        continue
        case "basta":
        break
        default:
        println("No tiene nada")
    }
}
