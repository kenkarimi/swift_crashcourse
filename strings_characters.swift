import Swift;

//Multiline string literals. A sequence of characters surrounded by 3 double quotation marks.
//Line breaks will be part of this strings value.
var quotation: String = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
""";
print(quotation);

//If you don't want line breaks to be part of the strings value, use (\) to end each line where a line break is not intended.
quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
""";
print(quotation);

var emptyString: String = "";

if(emptyString.isEmpty){
    print("String is empty");
}

if(emptyString == ""){
    print("String is still empty");
}

//Characters. Iterating through the characters of a string with the for in loop.
for character in "Dog" {
    print(character);
}

let exclamationMark: Character = "!";
print(exclamationMark);

let catCharacters: [Character] = ["C", "A", "T"];
print(catCharacters);

let string1: String = "hello";
let string2: String = " there";
var welcome = string1 + string2;
print(welcome);

//Appending a character
welcome.append(exclamationMark);
print(welcome);

var firstName: String = "Kennedy";
var lastName: String = "Karimi";
print(firstName + lastName);

var word = "Pernicious";
print(word.count);

//Accessing strings.
//Swift strings can’t be indexed by integer values. In order to determine which Character is at a particular position, you must iterate over each Unicode scalar from the start or end of that String.
var greeting: String = "Guten Tag!";
print(greeting[greeting.startIndex]);//G
print(greeting[greeting.index(after: greeting.startIndex)]);//U
print(greeting[greeting.index(before: greeting.endIndex)]);//! //greeting.endIndex is after the string has ended so to get last index you use the before: argument.
print(greeting[greeting.index(greeting.startIndex, offsetBy: 7)]);//a

//Inserting and Removing
var hello = "hello"
hello.insert("!", at: hello.endIndex);
print(hello);

hello.remove(at: hello.index(before: hello.endIndex))
print(hello);

//Substrings
/*let feeling = "I'm, good";
let index = feeling.firstIndex(of: ",") ?? feeling.endIndex; //Should work, but firstIndex is showing up as an error.
let beginning = feeling[..<index];
let newString = String(beginning);*/