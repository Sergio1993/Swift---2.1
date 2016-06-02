//: Playground - noun: a place where people can play

import UIKit

//Tarea 0
//Crea una clase simple con una propiedad y un inicializador que asigne valor a esa propiedad. ( init)

class Persona {
    var edad :Int?
    
    init (){
        edad = 22
    }
}

//Tarea 1
//Crea una clase que contenga 3 propiedades y 4 inicializadores, solo uno de estos va a asignar las propiedades. Los 3 restantes van a delegar en este la tarea de inicializar las propiedades. ( self.init)
//Nota que deben tener todos parámetros diferentes.
print("======================TAREA 1 =======================")
struct Jugador{
    var nombre : String?
    var edad : Int?
    var posicion : String?
}

struct Club {
    
    var nombreClub : String?
    var numeroSocios : Int?
    var jugadores = Jugador()
    
    init(nombre: String){
        let juga = Jugador(nombre:nombre, edad:25, posicion:"MC")
        self.init(jugadores: juga, nombreClub: "REAL MADRID", numeroSocios:854621)
        print("El \(String(nombreClub!)) ha fichado a \(nombre)")
    }
    
    init(nombre: String, nombreClub: String, numeroSocios :Int){
        let juga = Jugador(nombre:nombre, edad:35, posicion:"DF")
        self.init(jugadores: juga, nombreClub: nombreClub, numeroSocios:numeroSocios)
        print("El \(String(nombreClub)) ha fichado a \(nombre), ahora cuenta con \(numeroSocios) socios")
    }
    
    init(valoracion: Int,nombre: String, edad:Int, posicion: String, nombreClub: String, numeroSocios :Int){
        let juga = Jugador(nombre:nombre, edad:edad, posicion:posicion)
        self.init(jugadores: juga, nombreClub: nombreClub, numeroSocios:numeroSocios)
        print("El \(String(nombreClub)) ha fichado a \(nombre) con una valoracion de \(valoracion)")
    }
    init(jugadores : Jugador, nombreClub: String, numeroSocios:Int){
        self.jugadores = jugadores
        self.nombreClub = nombreClub
        self.numeroSocios = numeroSocios
    }
    
}
let primerClub = Club(nombre: "Sergio")
let segundoClub = Club(nombre: "Pepe", nombreClub: "AT. MADRID", numeroSocios: 89566)
let tercerClub = Club(valoracion: 90, nombre: "Koke",edad: 21, posicion: "MC", nombreClub: "BARSA", numeroSocios: 89566)
let cuartoClub = Club(jugadores: Jugador(nombre:"Sergio",edad: 34, posicion: "MC"), nombreClub: "Real Madrid", numeroSocios: 92522)




//Tarea 2
//Crea una clase con 2 propiedades, un inicializador designado y dos de conveniencia. (convenience init)
print("======================TAREA 2 =======================")
struct ValoresAnimal{
    var fuerza: Int
    var genero: String
}

class Animal {
    
    var raza : String
    var valores : ValoresAnimal
    
    init(raza : String, valores : ValoresAnimal){
        self.raza = raza
        self.valores = valores
    }
    
    convenience init (raze: String, fuerza: Int, genero: String) {
        let vitalAnimal = ValoresAnimal(fuerza: fuerza, genero: genero)
        self.init (raza: raze, valores: vitalAnimal)
    }
    
    convenience init (color: String, raze: String, fuerza: Int, genero: String) {
        let vitalAnimal = ValoresAnimal(fuerza: fuerza, genero: genero)
        self.init (raza: raze, valores: vitalAnimal)
        print("El color del \(String(raze)) es \(String(color)) y tiene una fuerza de \(fuerza) puntos")
    }
    
    
}

let animal = Animal(color:"rojo", raze:"León", fuerza: 90, genero:"Masculino")

print("======================TAREA 3 =======================")
//Tarea 3
//Crea una jerarquia de herencia para 3 clases.  (super.init)
//Ejemplo: A -> B -> C
//Cada clase debe tener un inicializador designado y dos de conveniencia para dar valor a sus propiedades. Elimina en todos los casos el inicializador sin parámetros.

//- Instancia un objeto de cada clase.
//- Crea indistintamente los objetos utilizando los constructores designados y de conveniencia según corresponda.

struct DatosPersonales{
    var nombre : String?
    var apellidos : String?
    var edad : Int?
    var numeroDni : Int?
    var letraDni : String?
}

class Presidente{
    var cargo : String?
    var club : String?
    var datos : DatosPersonales
    
    init(club: String, cargo:String, datos : DatosPersonales){
        self.cargo = cargo
        self.datos = datos
        self.club = club
    }
    
    convenience init (club: String, cargo: String, nombre: String, apellidos: String, edad:Int, numeroDni: Int, letraDni: String ){
        let datosPresi = DatosPersonales(nombre: nombre, apellidos: apellidos, edad:edad, numeroDni: numeroDni, letraDni:letraDni)
        self.init(club: club, cargo: cargo, datos: datosPresi)
    }
    
    convenience init (club: String, cargo: String, nombre: String, apellidos: String, edad:Int, numeroDni: Int, letraDni: String, convocatoriaElecciones: String){
        let datosPresi = DatosPersonales(nombre: nombre, apellidos: apellidos, edad:edad, numeroDni: numeroDni, letraDni:letraDni)
        self.init(club: club, cargo: cargo, datos: datosPresi)
    }
}

class DirectorDeportivo: Presidente{
    
    var nombreFichaje : String?
    var opinionSobreJugador : String?
    let datosDirector = DatosPersonales(nombre: "Perico", apellidos: "Palotes", edad:85, numeroDni: 12420869, letraDni:"G")
    
    init(nombreFichaje: String, opinionSobreJugador: String, nombre: String, apellidos: String, edad:Int, numeroDni: Int, letraDni: String, club: String, cargo: String){
        self.nombreFichaje = nombreFichaje
        self.opinionSobreJugador = opinionSobreJugador
        let datosDirector = DatosPersonales(nombre: nombre, apellidos: apellidos, edad:edad, numeroDni: numeroDni, letraDni:letraDni)
        super.init(club: club, cargo: cargo, datos: datosDirector)
    }
    
    convenience init(club: String, cargo: String){
        self.init(nombreFichaje: "guti", opinionSobreJugador: "muybuena", nombre: "e", apellidos: "w", edad:89, numeroDni: 978, letraDni:"j",club: club, cargo: cargo)
        
    }
    
    
    convenience init(valoracionPresidente: String){
        self.init(nombreFichaje: "guti", opinionSobreJugador: "muybuena", nombre: "e", apellidos: "w", edad:89, numeroDni: 978, letraDni:"j",club: "REAL MADRID", cargo: "DIRECTOR")
        
    }
    
    
}

class Entrenador: DirectorDeportivo{
    var alineacion : String?
    var convocatoria = [String]()
    
    
    let datosEntrenador = DatosPersonales(nombre: "Perico", apellidos: "Palotes", edad:85, numeroDni: 12420869, letraDni:"G")
    
    init (alineacion: String, convocatoria: [String], club: String, cargo: String) {
        self.alineacion = alineacion
        self.convocatoria = convocatoria
        super.init(nombreFichaje: "guti", opinionSobreJugador: "muybuena", nombre: "e", apellidos: "w", edad:89, numeroDni: 978, letraDni:"j",club: club, cargo: cargo)
    }
   
    convenience init(valoracionPresidente: String){
        if (valoracionPresidente  == "MUY BUENA"){
            print("Este entrenador es una maquina")
        }else{
            print("Este entranedaor es una mierda")
        }
        let arrayJugadores = ["CASILLAS","PEPE","RAMOS","MARCELO","LAHM","XAVI","INIESTA","ISCO","JAMES","SUAREZ","C.RONALDO"]
        self.init(alineacion: "4-4-2", convocatoria: arrayJugadores, club: "Madrid", cargo: "Entrenador")
        
    }
    
    convenience init(club: String, cargo: String){
        self.init(alineacion: "4-3-3", convocatoria: [], club: club, cargo: cargo)
    }
    
}

let presi = Presidente(club: "REAL MADRID", cargo: "Presidente", nombre:"Florentino", apellidos:"Perez", edad: 73, numeroDni: 12420869, letraDni:"H")
var nombreCompleto = presi.datos.nombre! + " "+presi.datos.apellidos!
print("El presidente actual del \(presi.club!) es el señor \(nombreCompleto)")

let direct = DirectorDeportivo(club: "BAYERN", cargo: "DIRECTOR");
print("EL director deportivo \(direct.datosDirector.nombre!) ha fichado a \(direct.nombreFichaje!)")

var array = ["CASILLAS","PEPE","RAMOS","MARCELO","LAHM","XAVI","INIESTA","ISCO","JAMES","SUAREZ","C.RONALDO"]


let entrena = Entrenador(alineacion: "4-4-2", convocatoria: array, club: "REAL MADRID", cargo: "Entrenador")
entrena.datos.nombre = "Daniel"
print("El entrenador \(entrena.datos.nombre!) a combocado a : ")
for indice in 1...array.count{
    print(array[indice-1])
}


//- ¿Puede un inicializador de conveniencia llamar al inicializador de su super clase?

//No, Un inicializador conveniencia debe llamar a otro inicializador de la misma clase.


