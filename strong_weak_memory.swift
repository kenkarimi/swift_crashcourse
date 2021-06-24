import Swift

//Strong vs Weak memory
//Strong and weak are ways to tell swift what type of usage a variable will have and as a result, when it's safe to get rid of it from memory.
//You can preface a variable with weak. If you don't preface it with anything, it's assumed to be strong.
//A weak variable will be deleted from memory if there's no other strong variable pointing to it.

class Person {
    weak var friend: Person?
    let name: String

    init(name: String){
        self.name = name
        print("\(name) is initialized")
    }

    deinit {
        print("\(name) is deinitialized")
    }
}

var joe = Person(name: "Joe") //joe is created strongly.
joe.friend = Person(name: "Alice")

//Both the init and deinit will tell us when an instance of class Person is initialized and deinitialized, and subsequently deallocated and removed from memory.
//The Person class also has a property friend of type Person. If weak keyword ommitted, then it will create a strong reference to any object that’s assigned to it.
//If weak keyword included, then it will create a weak refenence to any object that's assigned to it.
//Also, Once joe goes away, anything that's connected to it that's weak as a proxy goes away too.

//Output if friend is strong:
    /*Bob is initialized
      Alice is initialized
    */

//Output if friend is weak:
    /*Joe is initialized
      Alice is initialized
      Alice is deinitialized
    */

//Also, joe.friend = nil would deinitialize Alice.
//If joe would have been an optional(var joe: Person? = Person(name: "Joe")) then setting joe = nil would deinitialize BOTH Joe and Alice.