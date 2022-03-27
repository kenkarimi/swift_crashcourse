import Swift;

//Protocols defines functions and variables that another class promises to have and implement.
//Very similar to an interface in Java.
//The class itself would have these functions and have the actual implementation of them in the curly braces.
//A class can conform to more than one protocol.
protocol CarDataSource {
    var color: String { get set } //Whatever class promises to have this should have the ability to get and set.
    func drive()
    func isAllWheelDrive() -> Bool
}
 
class Car {
    
}

class BMW: Car, CarDataSource { //Since CarProto is specified here(sort of as would happen in Java) we're required to implement all it's variables & methods or the compiler will complain.
    var color: String

    init(color: String) {
        self.color = color
    }

    func drive() {

    }

    func isAllWheelDrive() -> Bool {
        return true;
    }
}