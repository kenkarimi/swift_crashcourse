import Swift;

enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var somePlanet = Planet.earth;

switch somePlanet {
    case .earth:
        print("Mostly harmless");
    default:
        print("Not a safe place for humans");
}

//More on this in the documentation.