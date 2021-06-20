import Swift;

//Useful as an alternative to if statements particularly for a more elegant look when unwrapping optionals.
//Using guard to unwrap optionals is very popular in swift.

func numberGreaterThanFive(number: Int) -> Bool {
    guard number != 5, number > 5 else { return false }
    print("just fucking print");
    return true;
}

print(numberGreaterThanFive(number: 6));

func functionThatsNeededByGuardReturn() -> Void {
    let text: String?
    text = "Test Text";

    guard let value = text else { return }
    print(value);
}

print(functionThatsNeededByGuardReturn());