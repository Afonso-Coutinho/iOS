import UIKit

class Animal {
    let color: String
    let gender: String
    let breed: String
    
    init(color: String, gender: String, breed: String) {
        self.color = color
        self.gender = gender
        self.breed = breed
    }
    
    func emitSound() {
        print("...")
    }
}

class Dog: Animal {
    
    func run() {
        print("O cachorro está correndo!")
    }
    
    //Sobrescrita da função emitSound para adaptar a função de acordo com a classe Dog
    override func emitSound() {
        print("Au, au!")
    }
}


//Type Casting

let animals: [Animal] = [
    Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker"),
    Dog(color: "Marron", gender: "M", breed: "PitBull"),
    Animal(color: "Branco", gender: "F", breed: "Silvestre")
]


for animal in animals {
    animal.emitSound()
    
    if animal is Dog {
        (animal as! Dog).run()
    }
    
    if let dog = animal as? Dog {
        dog.run()
    }
}
