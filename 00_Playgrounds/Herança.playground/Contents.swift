import UIKit

class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
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
}

class Bird: Animal {
    let canFly: Bool
    
    func fly() {
        if canFly {
            print("O pásaro está voando!")
        } else {
            print("Este pásaro não voa!")
        }
    }
    
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
}

let billy = Dog(color: "Preto", gender: "M", breed: "Vira-Lata")
let zeCarioca = Bird(color: "Verde", gender: "M", breed: "Papagaio", canFly: true)

billy.emitSound()
zeCarioca.emitSound()
