import Swift;

func matchRegEx(_ expression: String, _ test_string: String) -> Bool {

    let predicate = NSPredicate(format: "SELF MATCHES %@", expression)

    return predicate.evaluate(with: test_string)
}

print(matchRegEx("^Matt.*Jones$", "Matt freakin Jones")) //Returns true. No matches


//^: Matching string needs to start with the characters that appear after this position.
//.: Stop matching characters after the appearance of the dot.
//*: Resume matching every consecutive character after this position.
//$: Stop matching characters for good after the dollar position.
//^Matt.*Jones$: Overall the expression says start with 'Matt' and end with 'Jones'. There can be any or no characters between them, so long as you start with 'Matt' and end with 'Jones'
print(matchRegEx("^Matt.*Jones$", "I love Matt freaking Jones")) //Returns false. No matches
//Does not start with 'Matt' as expression requires

print(matchRegEx("^Matt.*Jones$", "Matt freaking Jones is that guy")) //Returns false. No matches
//Does not end with 'Jones' as expression requires

print(matchRegEx("^Matt.*Jones$", "Matt Jones")) //Returns true
//Does not require any characters between 'Matt' and 'Jones' so still matches

print(matchRegEx("^.*$", "This whole string will match the expression.")) //Returns true
//Matches any character that appears from the beginning to the end of the string. As with the previous 'Matt Jones' examples, there can be any characters between them(.*).

print(matchRegEx("^[0-9]{10}$", "072245677")) //Returns true
//{10} means it needs exactly 8 digits. Not more, not less, for it to evaluate to true. This is not to be confused with {2,8} which means {'min, max'}.

print(matchRegEx("^[0-9+]{10,13}$", "0722123456")) //Returns true
print(matchRegEx("^[0-9+]{10,13}$", "+254722123456")) //Returns true
//Phone number validation. {10,13} in this case meain {'min','max'}. Also a '+' sign is added to the expression, making it possible to do either 0722123456 ir +254722123456. Number of characters has to be 10 through 13 in both cases. Both return true.

print(matchRegEx("^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$", "jondoe@gmail.com")) //Returns true.
//NB: Since '.' is a special character, we need to use a backslash to indicate that in this case, we mean to use it as a simple dot. If you use https://regex101.com to test this expression, one backslash(\.) is all you'd need. But the problem with swift is that a backslash is also a special character in regards to strings so you also need to escape out of it too. We do that using a backslash. In the end, we end up using (\\.) Regex implementations in other languages and frameworks may take a more traditional for with regard to this.
//NB: The curly brackets {2,64} only applies to the third part of the expression after the '.' [A-Za-z] (square brackets). This means that even if you exceed these min and max values in the other parts of the expression, so long as the this third part conforms to those values, the expression evaluates to true. This is the same for every other example where curly brackets were used e.g. In all the phone number examples, even for single number curly brackets {10}



print(matchRegEx("^[+]{0,1}+[0-9]{10,12}$", "0722123456")) //Returns true

print(matchRegEx("^[+]{0,1}+[0-9]{10,12}$", "+254722123456")) //Returns true

//NB: {0,1} curly brace applies to [+] square bracket. Meaning that the '+' can appear or not appear. {10,12} curly brace applies to [0-9] square brackets. Allows you to write a 10 digit phone number(0722123456) or a 12 digit phone number(254722123456) that goes with the plus.

//NB: Also, the '+' here unlike the previous regex expressions can only be used before the digits. Never after. Also because of the {0,1} max, you can only use one '+'. Not many.



print(matchRegEx("^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$", "jondoe@gmail.com")) //Returns true.

//NB: {2,} is different from {2} in that it means you have a minimum number of characters, but no maximum.



//NB: All these regex can be tested here for a more readable match output: https://regex101.com

