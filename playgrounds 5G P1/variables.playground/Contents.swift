import UIKit



//: ## Direccion de variables
/*
 &variables
 
 */


//: variables calcualdas



//let timed: Bool = {
//
//    if val == 1 {
//
//        return true
//
//    }else{
//
//         return false
//    }
//
//}()

let boton : UIButton = {
    
    
    let b = UIButton(type: .system)
    b.setTitle("click on me", for: .normal)
    return b
    
    
}()

//: Setters & Getters

var now: String {
    get{
        return Date().description
    }
    set{
        print(newValue)
    }
    
}
print(now)

now = "Today"
print(now)


//:Setter observadores


var cualquierCosa = "cualquiercosa"{
    
    willSet{
        print(newValue)
    }
    didSet{
        print(oldValue)
    }
    
    
    
}
cualquierCosa = "hola"



