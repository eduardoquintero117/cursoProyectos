//: [Previous](@previous)

import UIKit

let miClosure = {(number: Int)-> Int in
    let resultado = number * number
    return resultado
    
    
}


var listaNumero = [2,3,4,5,6,7]


var numerosMapeados =  listaNumero.map(miClosure)

numerosMapeados = listaNumero.map({(number: Int) -> Int in
    let resultado = number * number
    return resultado
    
})

numerosMapeados = listaNumero.map({ number in number * number})

numerosMapeados = listaNumero.map{ number in number * number}

numerosMapeados = listaNumero.map{$0 * $0}



//: [Next](@next)
