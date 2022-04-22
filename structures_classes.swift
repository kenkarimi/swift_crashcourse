import UIKit

//constructors in swift are called initializers.
//A class is a reference type while a struct is a value type.

class Car {
    let color: String
    let make: String
    
    init(c: String, m: String){ //initializer(costructor)
        self.color = c
        self.make = m
        print("Car color is \(color) and make is \(make)")
    }
}

//instances of car
var bmw: Car = Car(c: "blue", m: "bmw")

var car2 = bmw
//If Car is a class then car2 is now bmw since it references it. So if bmw is blue, then car2 is now blue too. If you change the bmw color, then car2s color changes as well.
//If Car is a struct then car2 is a copy of bmw with its own independent values that aren't affected by cahnges to bmw. So if bmw color changes to teal, car2 color doesn't change with it.
//In other words, in structs create independent instances that aren't affected by changes to anything other than changes to that particular instance.

//Structres and classes are defined using the same syntax. They share some properties but differ in others, including inheritance etc. for more, check the documentation.
struct Truck {
    let color: String
    let make: String
    
    init(c: String, m: String){ //initializer(costructor)
        self.color = c
        self.make = m
        print("Truck color is \(color) and make is \(make)")
    }
}

//instances of truck
var faw: Truck = Truck(c: "black", m: "FAW")

var truck2 = faw
