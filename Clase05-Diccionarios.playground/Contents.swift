//: Playground - noun: a place where people can play

import UIKit

//Tarea 0

//Crea un diccionario con 3 pares de datos clave-valor de tipo [String:String]

var diccionarioString = ["primero":"A","segundo":"B", "tercero":"C"]

//Tarea 1

//Crea un diccionario con 5 pares de datos clave-valor de tipo [String:Bool]

var diccionarioBool = ["a":true,"b":false, "c":true, "d":false, "e": false]

//Tarea 2

//Crea un diccionario con 2 pares de datos clave-valor de tipo [Int:String]

var diccionarioIntString = [1:"a",2:"b"]

//Tarea 3

//Crea un diccionario con 3 pares de datos clave-valor de tipo [Int:Int]

var diccionarioIntInt = [1:1,2:2,3:3]

//Tarea 4

//Añade una nueva clave y valor, utilizando la sintaxis del subíndice al diccionario de la Tarea 1.

diccionarioString["cuarto"] = "D"

//Tarea 5

//Elimina el valor para la clave [“Asdf”] del diccionario de la Tarea 0 “si existiere esta”.
print("TAREA 5")
if let valorEliminar = diccionarioString["Asdf"]{
    diccionarioString.removeValueForKey("Asdf")
    print("existe el valor Asdf")
}else{
    print("No existe el valor Asdf")
}

//Tarea 6

//Comprueba si existe la clave [“qwerty”] del diccionario de la Tarea 0, imprime un mensaje en cada caso posible.
print("TAREA 6")
var diccionarioStringD = [String:String]()

for (key, valor) in diccionarioStringD{
    if let valorComprobar = diccionarioStringD["qwerty"]{
        print("existe el valor qwerty, eliminado")
        
    }else if (diccionarioStringD[key] == nil){
        print("no hay valores")
        
    }else{
        print("El valor \(valor) no es igual a qwerty")
    }
}
//Tarea 7

//Itera sobre los pares del diccionario de la Tarea 1 utilizando un for in.
print("TAREA 7")
for(key,value) in diccionarioBool
{
    
    print("Clave: \(key) --> Valor:\(value)")
    
}

//Tarea 8

//Itera sobre las keys del diccionario de la Tarea 1 utilizando un for in.
print("TAREA 8")
for(key,value) in diccionarioBool
{
    print("Clave: \(key)")
    
}
//Tarea 9

//Crea un array con las keys del diccionario de la Tarea 1.
var miArray = diccionarioBool.keys


//Tarea 10

//Crea un diccionario vacío [Int:Int]

var diccionarioVacio =  [Int : Int] ()
