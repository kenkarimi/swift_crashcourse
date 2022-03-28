import Swift;

////////////********************ARRAYS*********************//////////////////////////
//Creating and populating an array by appending it at it's end.
var someInts: [Int] = [];
someInts.append(3);
print(someInts);

//Emptying an array
someInts = [];
print(someInts);

//Creating an array with default values.
var threeDoubles = Array(repeating: 0.0, count: 3);
print(threeDoubles);

var shoppingList = ["Eggs", " Milk", "Gummy Bears", "Trinkets", "Jaw Breakers"];
print(shoppingList);

//Array Size
print(shoppingList.count);

//Check if Array is empty
if(shoppingList.isEmpty){
    print("Shopping list is empty");
} else {
    print("Shopping list absolutely not empty");
}

//Accessing items.
print(shoppingList[0]);

//Change existing value at a certain index
shoppingList[0] = "Pasta";
print(shoppingList[0]);

shoppingList[3...4] = ["Bananas"]; //index 3 & 4 both replaced with bananass
print(shoppingList);

//insert at index without replacing the current item at that index.
shoppingList.insert("Maple Syrup", at: 1);
print(shoppingList);

//Iterate over an Array
for item in shoppingList {
    print(item);
}

//Iterate but enumerate every value with an index while returning each result in the form of a tuple.
for (index, value) in shoppingList.enumerated() {
    print("Item: \(index + 1): \(value)");
}
 




////////////********************SETS*********************//////////////////////////
//Use sets when the order of an item isn't important or when you need to ensure that an item only appears once.
var letters = Set<Character>();
print("letters is of type Set<Character> with \(letters.count) items.");

letters.insert("a");
print(letters);

letters.insert("a");
print(letters); //Still only shows one 'a; because sets only allow for an item to appear once.

var favouriteGenres: Set<String> = ["Rock", "Classical", "Rock", "Indie"];
print(favouriteGenres); //Only prints Indie, Rock and Classical. The second index of 'Rock' is a repetition hence ignored.

if (favouriteGenres.isEmpty) {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

favouriteGenres.insert("Jazz");
print(favouriteGenres);

let removedGenre: String? = favouriteGenres.remove("Classical"); // Use optional since there's a chance it could be nil. In real life, we're sure it's not, so we'll make it literal.

if(removedGenre != nil){
    print("\(removedGenre!)? I'm over it"); //We use ! to unwrap/make it literal
} else {
    print("My music taste pretty much remains the same.");
}

if(favouriteGenres.contains("Funk")){
    print("I get up on the good foot.");
} else {
    print("Nah, never liked funk");
}

//Iterating over a set
for genre in favouriteGenres {
    print(genre);
}

/*You can perform other set operations such as Union, itersection, subtraction and symetric difference as per the documentation.*/




////////////********************DICTIONARIES*********************//////////////////////////
//They work with key value pairs i.e Dictionary<Key, Value>

//Empty dictionary
var namesOfIntegers: [Int: String] = [:];
print(namesOfIntegers); //empty

//Since context already prvides type information, you can insert the first key-value pair like this:
namesOfIntegers[16] = "sixteen"; //Dictionary now contains 1 key value par.
print(namesOfIntegers);

//Creating a dictionary using a dictionary literal
var airports: [String:String] = ["YYZ": "Toronto Person", "DUB": "Dublin", "JKIA": "Jommo Kenyatta International Airport"];
print(airports);

print("The airports dictionary contains \(airports.count) items."); //Dictionary length.

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}

//Add a new dictionary item
airports["LHR"] = "London";
print(airports);

//Update dictionary item
airports["LHR"] = "London Heathrow";
print(airports);

//Alternative Update dictionary value
let oldValue_optional: String! = airports.updateValue("Dublin Airport", forKey: "DUB"); //Make it a literal type since it could be nil(to avoid error)
let oldValue: String = oldValue_optional;
print("The old value for DUB was \(oldValue).");
let airportName_optional: String! = airports["DUB"];
let airportName: String = airportName_optional;
print("The new value for DUB is \(airportName)");

//Remove key value pair from dictionary.
airports["JKIA"] = nil;
print(airports);

//Remove also by:
let removedValue: String? = airports.removeValue(forKey: "DUB");
if removedValue != nil {
    print("The removed airport's name is \(removedValue!).");
} else {
    print("Removal failed. Dictionary remains the same");
}

//Iterating over a dictionary
for (airportCode, airportName) in airports {
    print("Key: \(airportCode) Value: \(airportName)");
}

//Alternative iteration for keys or values
for airportCode in airports.keys {
    print("Key: \(airportCode)");
}

for airportName in airports.values {
    print("Value: \(airportName)");
}