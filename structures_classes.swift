import Swift;

//constructors in swift are called initializers.
//A class is a reference type while a struct is a value type.

class Car {
    let color: String
    let make: String

    init(c: String, m: String) { //initializer(constructor)
        self.color = c
        self.make = m
    }
}

//instances of car.
var bmw: Car = Car(c: "blue", m: "bmw");

var car2 = bmw
//If Car is a class then car2 is now bmw since it references it. So if bmw is blue, then car2 is now blue too. If you change the bmw color, then car2s color changes as well.
//If Car is a struct then car2 is a copy of bmw with its own independent values that aren't affected by cahnges to bmw. So if bmw color changes to teal, car2 color doesn't change with it.
//In other words, in structs create independent instances that aren't affected by changes to anything other than changes to that particular instance. 