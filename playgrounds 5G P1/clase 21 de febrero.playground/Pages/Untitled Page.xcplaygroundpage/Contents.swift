import UIKit

var nombre : String?
nombre = nil

nombre = "Silvy"

if let nombreBackup = nombre{
    print("El nombre  es \(nombreBackup)")
}else{
    print("no hay nombre")
}

let nombreRespaldo = nombre ?? "don nadie"

//Mas usada en ambito profesional

func saluda(cadena: String?){
    guard let temp = cadena else{
        print("No hay valor ")
        return
    }
    print(temp)

}

saluda(cadena: nil)
saluda(cadena: "Hola")
