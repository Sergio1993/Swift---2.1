//: Playground - noun: a place where people can play

import UIKit

//Tarea 0
//Crea una función que imprima el mensaje: “Hola funciones"

func saludo(){
    println("Hola funciones")
}

saludo()

//Tarea 1
//Crea una función que imprima la suma de dos números recibidos por parámetros.

func suma(num1 : Int, num2: Int){
    println("\(num1+num2)")
    
}

suma(2,3)


//Tarea 2
//Crea una función que devuelva la suma de dos números recibidos por parámetros.

func devolverSuma(num1 : Int, num2: Int) -> Int {
    var suma = num1 + num2
    return suma
}

devolverSuma(4, 5)


//Tarea 3
//Crea una función que devuelva el cuadrado y el cubo de un número recibido por parámetros.

func cuadradoCubo(num1 : Double) -> (cuadr: Double, cub: Double) {
    
    var cuadrado = num1*num1
    var cubo = num1*num1*num1
    
    return (cuadrado, cubo)
    
}

cuadradoCubo(5)


//Tarea 4
//Crea una función que devuelva el cuadrado, el cubo y un bool (true/false si es par o impar), de un número recibido por parámetros.

func cuaCubBool(cuadrado : Double, cubo : Double, par : Double) -> (cuad : Double, cubo : Double, p : Bool) {
    
    var cua = cuadrado * cuadrado
    var cub = cubo * cubo * cubo
    var numPar = false
    if (par%2 == 0){
        numPar = true
    }else{
        numPar = false
    }
    return (cua, cub,numPar)
}

let cCb = cuaCubBool(2,5,6)

//Tarea 5
//Re-diseña las dos funciones anteriores para que estas tengan parámetros externos, agrega de igual modo etiquetas a sus tipos de retorno.

func cuadradoCubo(valorDouble num1 : Double) -> (cuadr: Double, cub: Double) {
    
    var cuadrado = num1*num1
    var cubo = num1*num1*num1
    
    return (cuadrado, cubo)
}

cuadradoCubo(valorDouble: 5)


func cuaCubBool(valorCuadrado cuadrado : Double, valorCubo cubo : Double, valorPar par : Double) -> (cuad : Double, cubo : Double, p : Bool) {
    
    
    var cua = cuadrado * cuadrado
    var cub = cubo * cubo * cubo
    var numPar = false
    if (par%2 == 0){
        numPar = true
    }else{
        numPar = false
    }
    return (cua, cub,numPar)
}

cuaCubBool(valorCuadrado: 2,valorCubo: 5,valorPar: 6)


//Tarea 6
//Menciona según tus observaciones.

//- ¿Cuantos views hay en la imagen?

// tiene 10, una seria la view superior o padre que contiene 5 labels, un textview,  dos botones(settings y calcule tip) y un separador

//- ¿Cuantos subviews? ¿Que elementos?

//9 - Contiene 5 labels, un textview, y dos botones(settings y calcule tip) y un separador

//- ¿Cuantos superviews? ¿Que elementos?

//1 superview


//Tarea 7
//Ordena los siguientes métodos según sean llamados en el ciclo de vida de un UIViewController:
//ViewDidUnload, ViewDidAppear, ViewDidLoad, ViewWillDisappear, ViewWillAppear, ViewDidDisappear

//1-ViewDidLoad --> 2-ViewWillAppear --> 3-ViewDidAppear --> 4-ViewWillDisappear --> 5-ViewDidDisappear --> 6-ViewDidUnload








