//: Playground - noun: a place where people can play

import UIKit

//Tarea 0
//Crea una clase con 5 métodos de instancia.

class Coche {
    func numRuedas() -> Int{
        return 4
    }
    
    func numPuertas(nP : Int){
        if (nP > 3){
            print("Este es un coche de 5 puertas")
        }else{
            print("Este es un coche de 3 puertas")
        }
    }
    
    func centimetrosCubicos(cC : Int){
        if (cC > 3000){
            print("Este es un cochazo con mas de 3000 centrimetros cubicos")
        }else{
            print("Este es un coche normal")
        }
    }
    
    func numCaballos(cV : Int){
        if (cV > 200){
            print("Este es un coche de mas de 200 caballos")
        }else{
            print("Este es un coche normal")
        }
    }
    
    func tipoCombustible(combustible : String){
        if (combustible == "Diesel"){
            print("Este es un coche diesel")
        }else{
            print("Este es un coche gasolina")
        }
    }
}


//Tarea 1
//Crea una clase con 5 métodos de instancia.
//De estos métodos, dos de estos tendrán 3 parámetros, el tercer parámetro además tendrá un parámetro externo y uno interno.
//Un método tendrá 4 parámetros, el primer parámetro siendo el mismo nombre interno y externo deberá ser obligatorio al llamar al método. (#)
//Utiliza un parámetro de método de igual nombre al de alguna propiedad, asigna esta mediante self para puntualizar la diferencia.
//Instancia 3 objetos de esta clase e indistintamente invoca los métodos que has creado, con los parámetros necesarios en cada caso.

class Animales {
    var numeroAletas = 2
    func perro(numeroPatas : Int, raza : String, color : String){
        print("Tiene \(numeroPatas) patas, es de la raza \(raza) y  es de color \(color)")
    }
    
    func camaleon(numeroPatas : Int, edad : Int, colorCamaleon color : String){
        print("Tiene \(numeroPatas) patas, tiene la edad de \(edad) y  es de color \(color)")
    }
    
    func pez(numeroAletas : Int, edad : Int, colorPez : String, raza : String){
        self.numeroAletas = numeroAletas
        print("Vive en el agua")
    }
    
    func cebra(){
        print("Tiene el pelo a rayas")
    }
    
    
    func delfin(){
        print("Tiene dos aletas y mucha inteligencia")
    }
    
}

let animal = Animales()

animal.camaleon(4, edad: 3, colorCamaleon: "verde")
animal.perro(4, raza: "cocker", color: "canela")
animal.pez(2, edad: 1, colorPez: "naranja", raza: "pez payaso")

//Tarea 2
//Crea una clase con 3 métodos de instancia y 2 de clase. (class methods)
//Dota a los métodos de clase con funcionalidades específicas que puedan resolver alguna tarea.
//Instancia 2 objetos de esta clase e indistintamente invoca los métodos que has creado, con los parámetros necesarios en cada caso.
//Invoca a los métodos de clase.
struct ValoresVitales {
    var fuerza = 0
    var vida = 0
}

struct Batalla {
    let mazazo = 20
    let hechizo = 15
    let flechazo = 5
}

class Enemigo {
    var nombre = String()
    var vital = ValoresVitales()
    var curar = Int()
    
    func orco(nombre : String, vital : ValoresVitales) {
        self.nombre = nombre
        self.vital = vital
    }
    
    func mago(nombre : String, vital : ValoresVitales) {
        self.nombre = nombre
        self.vital = vital
    }
    
    func arquero(nombre : String, vital : ValoresVitales) {
        self.nombre = nombre
        self.vital = vital
    }
    
    static func curacion() -> Int{
        return 5
    }
    
    static func comprobarVida (vida : Int, nombre :String) -> Int{
        if (vida <= 0){
            print("El jugador \(nombre) ha sido eliminado")
        }else{
            print("\(nombre) te queda \(vida) de vida")
        }
        return vida
    }
}

var cantidadAtaques = 3

let enemigoUno = Enemigo()
let enemigoDos = Enemigo()
let enemigoTres = Enemigo()
let guerra = Batalla()

enemigoUno.nombre = "Graludar"
enemigoDos.nombre = "Legolas"
enemigoTres.nombre = "Melchor"


enemigoUno.vital = ValoresVitales(fuerza : 200, vida : 100)
enemigoDos.vital = ValoresVitales(fuerza : 100, vida : 70)
enemigoTres.vital = ValoresVitales(fuerza : 150, vida : 85)

var vidaTotalEquipo = enemigoUno.vital.vida + enemigoDos.vital.vida + enemigoTres.vital.vida

let ataqueUno = guerra.flechazo
let ataqueDos = guerra.hechizo
let ataqueTres = guerra.mazazo

var diccionarioAtaques = [1: ataqueUno, 2: ataqueDos, 3: ataqueTres]
var diccionarioEnemigos = [1: enemigoUno.nombre, 2: enemigoDos.nombre, 3: enemigoTres.nombre]

while (cantidadAtaques > 0 && vidaTotalEquipo > 0){
    var randomNumber1To3 = arc4random_uniform(3) + 1
    var ataqueAleatorio = diccionarioAtaques[Int(randomNumber1To3)]
    print("================ NUMERO RESTANTE DE ATAQUES: \(cantidadAtaques) ================")
    enemigoUno.vital.vida -= ataqueAleatorio!
    Enemigo.comprobarVida(enemigoUno.vital.vida,nombre: enemigoUno.nombre)
    
    enemigoDos.vital.vida -= ataqueAleatorio!
    Enemigo.comprobarVida(enemigoDos.vital.vida,nombre: enemigoDos.nombre)
    
    enemigoTres.vital.vida -= ataqueAleatorio!
    Enemigo.comprobarVida(enemigoTres.vital.vida,nombre: enemigoTres.nombre)
    
    cantidadAtaques--
    
}

enemigoUno.vital.vida += Enemigo.curacion()
enemigoDos.vital.vida += Enemigo.curacion()
enemigoTres.vital.vida += Enemigo.curacion()