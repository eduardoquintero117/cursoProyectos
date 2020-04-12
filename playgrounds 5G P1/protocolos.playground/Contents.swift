import UIKit

//ARM (Advance Risc Machine)
//CISC  Complex Instruction Set Computer
//RISC  Reduced Instruction Set Computer @velocidad


//:#Protocos

protocol Volador {
    
    func volar()
    
}


struct Ave:Volador{
     func volar() {
        print("volar")
    }
}


class Humano:Volador {
    func volar() {
        print("volar")
    }
}

struct perro {
    
}

func hazloVolar(_ filtro: Volador){
    filtro.volar()
}


let cotorro = Ave()
let cesar = Humano()
let firulais = perro()
hazloVolar(cotorro)
hazloVolar(cesar)

// firulais no vuela por que no es parte de los voladores por parte de protocolo
//hazloVolar(firulais)



