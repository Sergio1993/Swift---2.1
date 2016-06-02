//: Playground - noun: a place where people can play

import UIKit

//Tarea 0
//Crea una clase Figura que defina propiedades y métodos comunes relevantes para conocidas figuras en 2D.

//Entre estos deben estar: area y perímetro.

class Figura {
    
    var lado = Double()
    var base = Double()
    var altura = Double()
    var resultado = Double()
    
    func area() -> Double{
        return 0.0
    }
    
    func perimetro () -> Double {
        return 0.0
    }
}


//Tarea 1
//Sobre el ejercicio anterior, crea propiedades y métodos específicos para nuevas clases: Cuadrado, Triángulo, Círculo y Octágono.
//Las clases anteriores deben heredar de la clase Figura.
//En cada caso, sobreescribir métodos area y perímetro, especializado para cada clase.

class Cuadrado : Figura {
    
    override func area() -> Double{
        super.resultado = super.lado * super.lado
        return super.resultado
    }
    
    override func perimetro() -> Double{
        super.resultado = 4 * super.lado
        return super.resultado
    }
}

class Triangulo : Figura {
    var ladoUno = Double()
    var ladoDos = Double()
    var ladoTres = Double()
    
    override func area() -> Double{
        super.resultado = (super.base*super.altura)/2
        return super.resultado
    }
    
    override func perimetro() -> Double{
        super.resultado = ladoUno + ladoDos + ladoTres
        return super.resultado
    }
}

class Circulo : Figura {
    
    let pi = 3.1416
    var radio = Double()
    
    override func area() -> Double{
        super.resultado = pi * (radio*radio)
        return super.resultado
    }
    
    override func perimetro() -> Double{
        super.resultado = 2*pi*radio
        return super.resultado
    }
}

class Octagono : Figura {
    
    var apotema = Double()
    
    override func area() -> Double{
        super.resultado = 4 * super.lado * apotema
        return super.resultado
    }
    
    override func perimetro() -> Double{
        super.resultado = 8 * super.lado
        return super.resultado
    }
}

print("=========CUADRADO=========")
let cuadrado = Cuadrado()
cuadrado.lado = 3.0
print("Area: \(Double(cuadrado.area()))")
print("Perimetro: \(Double(cuadrado.perimetro()))")

print("=========TRIANGULO=========")
let triangulo = Triangulo()
triangulo.base = 2.5
triangulo.altura = 3.0
triangulo.ladoUno = 5.0
triangulo.ladoDos = 10.0
triangulo.ladoTres = 4.5
print("Area: \(Double(triangulo.area()))")
print("Perimetro: \(Double(triangulo.perimetro()))")

print("=========CIRCULO=========")
let circulo = Circulo()
circulo.radio = 2.6
print("Area: \(Double(circulo.area()))")
print("Perimetro: \(Double(circulo.perimetro()))")

print("=========OCTAGONO=========")
let octagono = Octagono()
octagono.lado = 9
octagono.apotema = 3
print("Area: \(Double(octagono.area()))")
print("Perimetro: \(Double(octagono.perimetro()))")

//Tarea 2
//Crea tres clases: Equilátero, isósceles y escaleno, las cuales heredan de Triángulo.
//Especializa estas clases para que cumplan con las características de estas figuras específicamente.

class Equilatero : Triangulo {
    
    let raizTres = 1.7320508075
    
    override func area() -> Double{
        super.resultado = (raizTres/4)*super.lado*super.lado
        return super.resultado
    }
    
    override func perimetro() -> Double{
        super.resultado = 3 * super.lado
        return super.resultado
    }
}

class Isosceles : Triangulo {
    
    var ladosIguales = Double()
    var ladoDistinto = Double()
    var cuadradoLadosIgu = Double()
    var cuadradoLadosDis = Double()
    
    
    override func area() -> Double{
        cuadradoLadosIgu = ladosIguales * ladosIguales
        cuadradoLadosDis = ladoDistinto*ladoDistinto/4
        //var raiz = sqrt(cuadradoLadosIgu - cuadradoLadosDis)
        var raiz = cuadradoLadosIgu - cuadradoLadosDis
        super.resultado = ladoDistinto * raiz/2
        return super.resultado
    }
    
    override func perimetro() -> Double{
        super.resultado = 2 * ladoDistinto + super.lado
        return super.resultado
    }
}

class Escaleno : Triangulo {
    
    override func area() -> Double{
    super.resultado = super.base * super.altura / 2
    return super.resultado
    }
    
    override func perimetro() -> Double{
    super.resultado = ladoUno + ladoDos + ladoTres
    return super.resultado
    }
}

print("=========TRIANGULO EQUILATERO=========")
let equilatero = Equilatero()
equilatero.lado = 2.5
print("Area: \(Double(equilatero.area()))")
print("Perimetro: \(Double(equilatero.perimetro()))")

print("=========TRIANGULO ISOSCELES=========")
let isosceles = Isosceles()
isosceles.ladosIguales = 4
isosceles.ladoDistinto = 5
isosceles.lado = 9
print("Area: \(Double(isosceles.area()))")
print("Perimetro: \(Double(isosceles.perimetro()))")

print("=========TRIANGULO ESCALENO=========")
let escaleno = Escaleno()
escaleno.base = 4
escaleno.altura = 5
escaleno.ladoUno = 9
escaleno.ladoDos = 9
escaleno.ladoTres = 10
print("Area: \(Double(escaleno.area()))")
print("Perimetro: \(Double(escaleno.perimetro()))")
