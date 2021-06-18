import Swift;

////////////********************For In Loop*********************//////////////////////////
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("For In: \(name)!")
}

//If you wan't array to be enumerated
let primes = [2, 3, 5, 7, 11];

for (n, prime) in primes.enumerated() {
    print("\(n) = \(prime)");
}


//For In loop in numeric ranges
for index in 0...5 {
    print("\(index) times 5 is \(index * 5)");
}

//Use ..< to exclude upper bound number
let minutes: Int = 20;

for tickMark in 0..<minutes {
    print("Minute: \(tickMark)");
}

//For in loop with intervals(Use either stride(from, to, by) OR stride(from, through, by))
let minuteInterval: Int = 5;

//Avoids printing 20 and just prints 0, 5, 10, 15. Since it's from, to.
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) { 
    print("Minute: \(tickMark)"); //result: 0, 5, 10, 15
}

//Since it's from, through, it prints 0, 5, 10, 15 and ALSO 20
for tickMark in stride(from: 0, through: minutes, by: minuteInterval) {
    print("Minute: \(tickMark)"); //result: 0, 5, 10, 15, 20
}

////////////********************While loop*********************//////////////////////////
var square = 0;
let finalSquare = 25;

while square < finalSquare {
    print("Square: \(square)");
    square += 1; //square++; //square = square + 1;
}

////////////********************Repeat While loop*********************//////////////////////////
//Run's at least once before it evaluates the condition for the first time.
square = 0;
repeat {
    print("Repeat Square: \(square)");
    square += 1;
} while square < 25; //So if square was initially a value greater than 25, it would've still ran the repeat code at least once before evalueating the condition for the first time.





////////////********************Conditionals: if, else if, else *********************//////////////////////////
let temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.");
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.");
} else {
    print("It's not that cold. Wear a t-shirt.");
}



////////////********************Switch*********************//////////////////////////
//Unlike in C and Objective C, switch statements finish execution as soon as the first matching switch case is completed without requiring an explicit break statement.
let someCharacter: Character = "z";
switch someCharacter {
case "a":
    print("The first letter of the alphabet");
case "z":
    print("The last letter of the alphabet");
default:
    print("Some other character");
}

//To make a switch with a single case that matches both "a" and "A", combine the two values into a compound case, separating the values with commas.
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("The letter a/A");
case "b":
    print("The letter is B");
default:
    print("Not the letter a, A or b");
}

//Interval matching
let approximateCount = 62;
let countedThings = "moons orbiting Saturn";
let naturalCount: String;

switch approximateCount {
case 0:
    naturalCount = "no";
case 1..<5:
    naturalCount = "a few";
case 5..<12:
    naturalCount = "several";
case 12..<100:
    naturalCount = "dozens of";
case 100..<1000:
    naturalCount = "hundreds of";
default:
    naturalCount = "many";
}
print(naturalCount);



/*Also check out Control transfer statements that change the order in which your code is executed,
by transferring control from one piece of code to another. Swift has five control transfer statements:
    continue
    break
    fallthrough
    return
    throw
*/