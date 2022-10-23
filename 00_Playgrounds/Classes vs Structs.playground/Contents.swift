import UIKit

struct Student {
    var name: String
    var age: Int
}

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


var student1 = Student(name: "Zeca", age: 22)
var student2 = student1

student1.name = "Alisson"
student1.age = 20

print(student2.name, student2.age)


//--------------------------------

var person1 = Person(name: "Zeca", age: 22)
var person2 = person1

person1.name = "Alisson"
person1.age = 33

print(person2.name, person2.age)


//Structs são passadas por cópia
//Classes são passadas por referência
