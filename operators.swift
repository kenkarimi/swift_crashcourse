import Swift;

//String concatenation with + operator.
let a: String = "Hello, ";
let b: String = "World";

let c: String = a + b;
print(c);

//Remainder operator. How many times a number can fit into another then gives the remainder.
let d: Int = 17;
let e: Int = 4;
let f = d % e;
print("4 fits into 17 four times and leaves a remainder of \(f)");

//Addition assignment operator(Similar to C)
var g = 1;
g += 2; //g + 1; //Increments operation by 1;
print(g);

//Comparison operators.
let h = 3;
let i = 3;

if(h == i){
    print("They're equal");
}
if(h != i){
    print("They're not equal");
}
if(h > i){
    print("h is greater than i");
}
if(h >= i){
    print("h is greater than or equal to i");
}
if(h < i){
    print("h is less than i");
}
if(h <= i){
    print("h is less than or equal to i");
}

let name = "Kennedy";
if(name == "Kennedy"){
    print("Name is mine");
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

//Comparing tuples. Can be done if they have the same type and the same number of values.
if((1, "apple") < (2, "banana")){
    print("True. 1 is less than two so apple and banana aren't checked");
}
if((2, "apple") < (2, "banana")){
    print("True. 2 and 2 are equal but apple is less than banana");
}
if((2, "banana") > (2, "apple")){
    print("True. 2 and 2 are equal and banana is not greater than apple");
}
if((2, "apple") == (2, "apple")){
    print("True. 2 and 2 are equal and apple and apple are equal");
}

//Ternary conditional operator. (question ? answer1 : answer2)
let contentHeight = 40
let hasHeader = true
let rowHeight = (hasHeader ? 50 : 20) + contentHeight; //brackets could alternatively be (hasHeader === true ? 50 : 20)
print("Row height: \(rowHeight)");

//Logical operators
//Logical NOT (!a)
//Logical AND (a && b)
//Logical OR (a || b)

//Combining logical operators
//if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword