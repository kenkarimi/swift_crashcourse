import Swift;

//Enums are a way to repersent multiple states/cases.
//A great use-case for this feature is say you have an order that could be in one of three states. InProgress, completed or aborted.
//You could have a variable order_state which would be equal to a string which is either "In Progress", "Completed" or "Aborted".
//You would then use if statements to do string comparisons whenever you need to know which state an order is in.
//Problem with this method is it doesn't let other developers know that all three of these are part of the same process and it's also prone to typos each time you're doing a comparison.
//Enums solve both these potential problems and makes things tidier.

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var somePlanet = Planet.earth;

switch somePlanet {
    case .mercury:
        print("Too close to the sun. Too hot.");
    case .venus:
        print("Atmosphere is thick enough to crash a car. Hottest planet due to runaway greenhouse effect");
    case .earth:
        print("Mostly harmless");
    case .mars:
        print("Too small so lost it's atmosphere cause it didn't have enough gravity to hold on to it.");
    case .jupiter:
        print("Gas plaent. Rains diamonds. Enrironment too hostile.");
    case .saturn:
        print("Yeah, not happening.");
    case .uranus:
        print("Too far from the sun");
    case .neptune:
        print("Way too far from the sun.");
    default:
        print("Not a safe place for humans");
}
 
//More on this in the documentation.