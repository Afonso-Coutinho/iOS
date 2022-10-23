import UIKit

enum FuelType {
    case gasoline, ethanol, diesel, flex
}

protocol ACCapable {
    var hasAC: Bool {get set}
    func turnAC (on: Bool)
    
}

class Vehicles {
    var brand: String
    var fuelType: FuelType
    
    init(brand: String, fuelType: Fueltype) {
        self.brand = brand
        self.fueltype = fuelType
    }
}

class Car: Vehicles, ACCapable {
    var numOfDoors: Int
    var hasAC = true
    
    init(brand: String, fuelType: FuelType, numberOfDoors: Int) {
        self.numberOfDoors = numOfDoors
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC (on: Bool){
        if on {
            print("Ligando ar-condicionado!")
        } else {
            print("Desligando ar-condicionado!")
        }
    }
}

class Bike: Vehicles {
    var cc: Int
    
    init(brand: String, fuelType: FuelType, cc: Int) {
        self.cc = cc
        super.init(brand: brand, fuelType: fuelType)
    }
}


class Airplane: Vehicles, ACCapable {
    var numberOfEngines: Int
    var hasAC = true
    
    init(brand: String, fuelType: FuelType, numberOfEngines: Int) {
        self.numberOfEngines = numberOfEngines
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC (on: Bool){
        if on {
            print("Ligando ar-condicionado!")
        } else {
            print("Desligando ar-condicionado!")
        }
    }
}
