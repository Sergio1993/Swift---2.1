//: Playground - noun: a place where people can play

import UIKit

//Tarea 0
//Define una clase Coche con 4 propiedades.

class Coche {
    
    var marca = String()
    var modelo = String()
    var color = String()
    var cilindrada = Int()
    var rueda = Rueda()
    
}

//Tarea 1
//Define una estructura Rueda con 2 propiedades.

struct Rueda {
    var diametro = 0
    var presion = 0.0
}

//Tarea 2
//Añade una nueva propiedad a la clase Coche de tipo Rueda.
//Instancia ambos tipos creados.
//A traves de la referencia a la clase, modifica los valores de las propiedades de la estructura Rueda.

let cochesCarretera = Coche()
let ruedasCarretera = Rueda(diametro: 12, presion: 2.9)

cochesCarretera.cilindrada = 32
cochesCarretera.rueda.diametro = 40
cochesCarretera.rueda.presion = 2.5


//Tarea 3
//¿Que diferencia hay entre let y var cuando instanciamos una nueva clase?
//cuando creamos una instancia de un objeto como let no podemos cambiar el valor de ninguna propiedad, dejariamos las propiedades por decirlo de alguna manera en modo getter, si la instancia la declaramos como var, podremos cambiar el valor de la variable y acceder al valor que ya contenia.

//Tarea 4
//Verdadero o Falso

//_ Las clases en Swift son tipos de valor. Falso
//_ Los tipos array y diccionario son clases.Verdadero
//_ String se implementa en Swift como una clase. Verdadero
//_ Las estructuras no son tipos de valor. Falso
//_ Al llamar a una función y pasar parámetros, las clases se copian y las estructuras se pasa una referencia a la instancia. Falso

//Tarea 5
//Investiga si el tipo string en C++ y Java es una clase o estructura, en cada caso. Cita las fuentes en la que basas tus conclusiones.

//Tanto en c++ como en java el tipo String es una clase
//https://blogdelingeniero1.wordpress.com/2014/07/23/el-tipo-string-y-sus-metodos-mas-importantes-en-c/
//http://www.sc.ehu.es/sbweb/fisica/cursoJava/fundamentos/clases1/string.htm

//Tarea 6
//Utilizando el operador "idéntico a” ===
//Crea el código para que este devuelva en un caso true y en otro false.
//Crea ejemplos para clases y estructuras.
//Justifica brevemente tu respuesta.

let otroCocheCarretera = cochesCarretera
let segundoCoche = Coche()
let otraRuedaCarretera = ruedasCarretera

if cochesCarretera === otroCocheCarretera {
    print("cochesCarretera y otroCocheCarretera se refieren a la misma instacia")
}

if cochesCarretera !== segundoCoche {
    print("No se refieren a la misma instancia")
}

/*if ruedasCarretera === otraRuedaCarretera {
    print("ruedasCarretera y otraRuedaCarretera se refieren a la misma instacia")
}*/

//EL operador "===" nos indica si una instancia es identica a la otra instancia
