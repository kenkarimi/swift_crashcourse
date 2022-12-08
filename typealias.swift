import Swift;

//Typealias
//A way to create your own types. Reason this exists is for more complex types that might be confusing to follow.

//Example of a messy looking dictionary.
/*
var address: [String: String] = ["": ""]

func validateAddress(address: [String: String]) {

}

validateAddress(address: address);
*/

//Problem:
 //Within the parameters of the function declaration 'validateAddress' we have to declare the dictionary type again(address: [String: String])

//Solution:

typealias Address = [String: String]

var address: Address = ["Name": "John Doe"]

func validateAddress(address: Address) {
    print(address)
}

validateAddress(address: address);

//Example 2: (closure)

/*var validateFunction: ((String) -> Bool)? = { (code) in
    return true
}

func didEnterCode(code: String) {
    let result = validateFunction!(code)
    print(result)
}*/

//Solution
typealias PromoCodeValidationFunction = ((String) -> Bool)?

var validateFunction: PromoCodeValidationFunction = { (code) in
    return true
}

func didEnterCode(code: String) {
    let result = validateFunction!(code)
    print(result)
}

didEnterCode(code: "my_code")