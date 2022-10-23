import UIKit

//Subscripts

class Car {
    var licensePlate: String
    
    subscript(index: Int) -> String {
        get {
            let character = Array(licensePlate)[index]
            return String(character)
        }
        set {
            var array = Array(licensePlate)
            array[index] = Character(newValue)
            self.licensePlate = String(array)
        }
    }
    
    init(licensePlate:String){
        self.licensePlate = licensePlate
    }
}

let car = Car(licensePlate: "EXP-8722")
car[0] = "A"
print(car.licensePlate)

// Generics

func swapValues<T>(_ a: inout T, _ b: inout T){
    let tempA = a
    a = b
    b = tempA
}

var a = "10"
var b = "20"

swapValues(&a, &b)

b
a
