import UIKit

//constructors in swift are called initializers.
//A class is a reference type while a struct is a value type.

class Car {
    var color: String
    var make: String
    
    init(c: String, m: String){ //initializer(costructor)
        self.color = c
        self.make = m
        print("Initialized car color as \(color) and make as \(make)")
    }

    func myInfo(caller: String){
        print("\(caller): Car color is \(color) and make is \(make)")
    }
}

//instances of car
var bmw: Car = Car(c: "blue", m: "bmw")
var vitz: Car = bmw

//These first calls are to see whether vitz is an instance of class BMW in both make and color as intended.
bmw.myInfo(caller: "bmw")
vitz.myInfo(caller: "vitz")

bmw.color = "red" //BMW color is changed from blue to red

//These second calls are to see whether vitz changes its color to red as well, being an instance of class BMW, or keeps its original color.
bmw.myInfo(caller: "bmw")
vitz.myInfo(caller: "vitz")

//If Car is a class then car2 is now bmw since it references it. So if bmw is blue, then car2 is now blue too. If you change the bmw color, then car2s color changes as well.
//If Car is a struct then car2 is a copy of bmw with its own independent values that aren't affected by cahnges to bmw. So if bmw color changes to teal, car2 color doesn't change with it.
//In other words, in structs create independent instances that aren't affected by changes to anything other than changes to that particular instance.

//Structres and classes are defined using the same syntax. They share some properties but differ in others, including inheritance etc. for more, check the documentation.
struct Truck {
    var color: String
    var make: String
    
    init(c: String, m: String){ //initializer(costructor)
        self.color = c
        self.make = m
        print("Truck color is \(color) and make is \(make)")
    }

    func myInfo(caller: String) {
        print("\(caller): Truck color is \(color) and make is \(make)")
    }
}

//instances of truck
var faw: Truck = Truck(c: "black", m: "FAW")
var isuzu: Truck = faw

//These first calls are to see whether isuzu is an instance of struct FAW in both make and color as intended.
faw.myInfo(caller: "faw")
isuzu.myInfo(caller: "isuzu")

faw.color = "matte black" //FAW color is changed from black to matte black

//These second calls are to see whether isuzu changes its color to matte black as well, being an instance of struct FAW, or keeps its original color.
faw.myInfo(caller: "faw")
isuzu.myInfo(caller: "isuzu")
