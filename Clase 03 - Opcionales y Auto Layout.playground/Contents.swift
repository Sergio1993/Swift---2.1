//: Playground - noun: a place where people can play

import UIKit

//TAREA 0

//Define un Int opcional

var entero :Int?

//¿Qué valor tiene por defecto?

//nill

//TAREA 1

//Asigna un valor al opcional que recientemente has creado e imprime este. 
//Recuerda cerciorarte que existe un valor antes de intentar imprimir.

entero = 10

if (entero != nil){
    print("El numero es \(entero!)")
}

//TAREA 2

//Asigna nil al opcional que recientemente has creado e imprime este. Hazlo sin comprobar.

//¿Qué sucede? ¿Por qué?

entero = nil

print("Este es un numero entero \(entero)")

//No imprime nada ya que es nil y hay que hacer una comprobacion antes

//Tarea 3

//Crea un opcional Int con valor implícito. (!)

var enteroDos: Int!

//Tarea 4

//Asigna un valor al opcional que recientemente has creado e imprime este.

enteroDos = 9999

print(enteroDos)

//Tarea 5

//Asigna nil al opcional que recientemente has creado e imprime este. Hazlo sin comprobar.

//¿Qué sucede? ¿Por qué?

enteroDos = nil

print(enteroDos)

enteroDos = 900

//Tarea 6

//Asigna el valor del opcional implicito al opcional normal y viceversa. 
//Nota los cambios sintácticos que deben hacerse para acceder al valor en cada caso.

entero = enteroDos

enteroDos = entero

//tarea 7

//Crea una aserción para el opcional que has creado. Y un mensaje de “Error, este opcional no puede ser nil”

assert(entero != nil, "Error, este opcional no puede ser nil")

//Tarea 8

//Tarea realizada en Xcode

//Para centrar la label en el centro, lo que hemos realizado ha sido centrar la label pulsando el boton control y arrastrando hacia arriba de esa forma lo centramos horizontalmente, después dando de nuevo en control y arrastrando hacia un lado lo centramos verticalmente.
