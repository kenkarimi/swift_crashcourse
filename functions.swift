import Swift;

//With parameters
func greet(person: String) -> String { //This function is different from the function greet(person:,alreadyGreeted) below by virtue of having different parameters even though the names are the same.
    let greeting: String = "Hello, " + person + "!";
    return greeting; 
}

print(greet(person: "Brian"));

func greetAgain(person: String) -> String {
    return "Hello, " + person + "!";
}

print(greetAgain(person: "Anna"));

func greet(person: String, alreadyGreeted: Bool) -> String { //This function is different from the function greet(person:) above by virtue of having different parameters even though the names are the same.
    if alreadyGreeted {
        return greetAgain(person: person);
    } else {
        return greet(person: person);
    }
}

print(greet(person: "Alicia", alreadyGreeted: false));
print(greet(person: "Fantasia", alreadyGreeted: true));

//Without parameters
func sayHelloWorld() -> String {
    return "Hello, World";
}

print(sayHelloWorld());

//Functions with multiple return types
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0];
    var currentMax = array[0];
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value;
        } else if value > currentMax {
            currentMax = value;
        }
    }
    return (currentMin, currentMax);
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71]);
print("min is \(bounds.min) and max is \(bounds.max)");

//Function Argument Lables and Parameter Names
//Each function has an argument label and parameter name. Wherever a function is called, an argument label is always in use in the function call.
//The parameter name is used in the implementation of the function(function definition).
//By default, parameters use their parameter name as their argument label. As seen in all the functions I've written above.

//Example of function where parameter name is also used as argument name by default:
func someFunction(firstParameterName: Int, secondParameterName: Int) {
    print("First: \(firstParameterName) Second: \(secondParameterName)");
}
someFunction(firstParameterName: 1, secondParameterName: 2); //argument labels used here are our parameter names by default since none were defined.


//Example where argument labels are defined.
func anotherFunction(firstArgumentLabel firstParameterName: Int, secondArgumentLabel secondParameterName: Int) {
    print("First: \(firstParameterName) Second: \(secondParameterName)");
}

anotherFunction(firstArgumentLabel: 3, secondArgumentLabel: 4); //Since argument labels are defined, they're used here instead of the default(which is always the parameter name).

//Omitting Argument Labels
//If you don’t want an argument label for a parameter, write an underscore (_) instead of an explicit argument label for that parameter.
func athirdFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
athirdFunction(1, secondParameterName: 2); //No argument label used for the first parameter since an underscore was used during it's definition.

//NOTE: You can also nest functions. Functions could be created within another function(global function) and called within the scape of the global function.