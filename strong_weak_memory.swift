import Swift;

//Strong vs Weak memory
//Strong and weak are ways to tell swift what type of usage a variable will have and as a result, when it's safe to get rid of it from memory.
//You can preface a variable with weak. If you don't preface it with anything, it's assumed to be strong.
//A weak variable will be deleted from memory if there's no other strong variable pointing to it.

class Child {
    weak var balloon = "str";
}

var joe = Child(); //joe is created strongly.

//Once joe goes away, anything that's connected to it that's weak as a proxy goes away too.