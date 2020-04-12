//: [Previous](@previous)

import UIKit


func suma(){
    print("saludando")
    
}

suma()
//: firma ********()******

func multiplicar (x: Int, y: Int) {
    print (x * y)
    
}
multiplicar(x:2 , y: 2)
//: firma ********(Int, Int) -> void******

func divide (_ x: Int, entre y: Int) {
    print (x / y)
    
}
divide(8, entre: 2)

func resta (_ x: Int, menos y: Int) {
    print (x - y)
    
}

let resultado = resta(5, menos: 2)

var contador = 0

func incrementa(valor: inout Int){
    valor += 1
    
}

incrementa(valor: &contador)


//: Overloading


func say (_ palabra: String){
    print(palabra)
    
    
    
}
 func say (_ palabra: Int){
     print(palabra)
     
     
     
 }

//say("hola")
//func niega() -> String{
//    return "no"
//}
//func niega() -> Int{
//    return 0
//}
//
//let valorNegado = niega()



//:Parametros por default

func crearTargeta(nombre:String , saldo: Double = 0.0){
    print("creando targeta para \(nombre) con un sado de : \(saldo)")
    
    
    
}

crearTargeta(nombre: "juan")
crearTargeta(nombre: "luis", saldo: 1.0)


//: Funciones con muchos parametros
func imprimeCadenas(cadenas: String...){
    for cadena in cadenas{
        print()
        
    }
    
}

imprimeCadenas(cadenas: "hola", " como" , " estas")

//: funciones como parametro

func ejecuta(a: Int , b: Int , funcion: (Int, Int)-> Int) -> Int{
    let resultados = funcion( a, b)
    return resultados
    
    
}





//: [Next](@next)
