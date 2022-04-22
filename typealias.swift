import Swift;

//Typealias
//A way to create your own types. Reason this exists is for more complex types that might be confusing to follow.


//Example of a messy looking dictionary.
/*
var address: [String: String] = ["": ""]

func validateAddress(address: [String: String]) {

}

validateCode(address: address);
*/

//Solution:

typealias Address = [String: String]

var address: Address = ["": ""]

func validateAddress(address: Address) {

}

validateAddress(address: address);

//Example 2:

/*var validateFunction: ((String) -> Bool)?

func didEnterCode(code: String) {
    let result: validateFunction?(code)
}*/

//Solution:
typealias PromoCodeValidationFunction = ((String) -> Bool)?

var validationFunction: PromoCodeValidationFunction