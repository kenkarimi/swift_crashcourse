import Swift;
print("Hello world");

//Consonants use the let keyword.
let myConsonant: String = "This is a consonant";
print(myConsonant);

//Varaibles use the var keyword.
var myVariable: String = "This is a variable";
print(myVariable);

/*Unlike consonants, variables can be reassigned after initial assignment*/
var languageName: String = "Swift";
languageName = "Swift++";
print(languageName);

//Integer
var myInt: Int = 10;
print(myInt);

//Float
var myFloat: Float = 0.0001;
print(myFloat);

//Double
var myDouble: Double = 0.000000043;
print(myDouble);

var myBoolean: Bool = true;
print(myBoolean);

let num1: Float = 17;
let num2: Float  = 4;
let result = num1/num2;
print(result);

let names = ["Anna", "Alex", "Brian", "Jack", "Ken"];
let length = names.count;
print("Array length: \(length)");

if(myBoolean) { 
    print("True with brackets");
}

if myBoolean {
    print("True without brackets");
}

//Tuple. Can have more than two values in the tuple.
let http404Error = (404, "Not found");
print(http404Error);

//Decomposing a tuple.
let (statusCode, statusMessage) = http404Error;
print("Status code: \(statusCode)");
print("Status messsage: \(statusMessage)");

//Decomposing only a specific value of a tuple.
let (onlyStatusCode, _) = http404Error;
print("Only status code: \(onlyStatusCode)");

//Tuple with individual elements named.
let http200Error = (statusCode: 200, statusMessage: "OK");
print("Status code: \(http200Error.statusCode)");
print("Status message: \(http200Error.statusMessage)");

//Optionals. A value either contains the specified type, or nothing at all.
var possibleNumber = "123";
var convertedNumber: Int? = Int(possibleNumber); //It's Int? by default even without the explicit typing I've done since swift recognises it's not a guarantee that the value is an Int.
if(convertedNumber != nil){ //Every optional HAS to be checked by an if statement before force unwrapping the underlying value with(!)
    print(convertedNumber!); //Exclamation point is basically permission to use the value within the optional(force unwrapping). Trying to access a non existent optional value using an exclamation point could trigger a runtime error.
    print("Converted number: \(convertedNumber!)");
    let unwrappedNumber: Int = convertedNumber!;
    print("Unwrapped number: \(unwrappedNumber)");
}

if let actualNumber = Int(possibleNumber) { //No need to use the ! suffix with actual number in this case.
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)");
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer");
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100");
}

//Implicitly unwrapped optionals. Useful when an optional’s value is confirmed to exist immediately after the optional is first defined and can definitely be assumed to exist at every point thereafter.
var secondPossibleNumber = "345";
var secondConvertedNumber: Int! = Int(secondPossibleNumber); //Implicitly unwrap now since we know the string value can definitively be converted into an integer(So no need to check with if statement). Remember that by default the type would be Int? without our intervention.
var convertedValue: Int = secondConvertedNumber;
print("Implicitly converted number: \(convertedValue)"); //Without passing the secondConvertedNumber to convertedValue, we would have had to still use the suffix ! to access the optional inside secondConvertedNumber during the print.

//Error Handling
func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

//Assertions and Preconditions
//Checks that happen at runtime used to make sure an essential condition is satisfied before executing any further code.
// If the Boolean condition in the assertion or precondition evaluates to true, code execution continues as usual. If the condition evaluates to false, the current state of the program is invalid; code execution ends, and your app is terminated.
let age: Int = 3;
assert(age >= 0, "A person's age can't be less than zero."); //Assertion message can be ommitted as such assert(age >= 0)
print("Success. Age is greater than 0");

//Precondition
//Assertions help you find mistakes and incorrect assumptions during development, and preconditions help you detect issues in production.
let index: Int = 5;
precondition(index > 0, "Index must be greater than zero.");
print("Life goes on regardless");