import Swift;

//A closure is a function that can be passed around. Also called Lambda in computer science.
func isGreaterThanThree(number: Int) -> Bool {
    if number > 3 {
        return true;
    } else {
        return false;
    }
}

print(isGreaterThanThree(number: 4));

//This is swifts version of assigning a function to a variable.
//The type of the function is type of it's only parameter and it's return type.
//On the other side of the equal sign, we have it's only parameter name(number) which could also be written without the brackets.
//If we had multiple parameters then we could just have their types alongside the Int and their parameter names alongside 'number' on the other side of the equal sign.
var isGreaterThanThreeOtherFunction: ((Int) -> Bool) = { (number) in
    if number > 3 {
        return true;
    } else {
        return false;
    }
}

print(isGreaterThanThreeOtherFunction(4));

//Closures don't have to return anything.
var isGreaterThanThreeLastFunction: ((Int) -> Void) = { (number) in
    if number > 3 {
        print("Is actually greater than three.");
    }
}

isGreaterThanThreeLastFunction(4);

var addTwoNumbersClosure: ((Int, Int) -> Int) = { a, b in
    return a + b
}

print(addTwoNumbersClosure(3, 2))