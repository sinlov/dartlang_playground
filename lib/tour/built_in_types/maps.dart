// this source for tour => built_in_types : maps
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// a map is an object that associates keys and values. Both keys and values can be any type of object.
// Each key occurs only once, but you can use the same value multiple times.
// Dart support for maps is provided by map literals and the Map type.

var gifts = {
  // key:    val
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// Dart infers that gifts has the type Map<String, String> and nobleGases has the type Map<int, String>.

// using a Map constructor
var giftsCon = Map();
var nobleGasesCon = Map();
// new Map() instead of just Map(). As of Dart 2, the new keyword is optional.

// create a map that’s a compile-time constant, add const before the map literal
final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
// constantMap[2] = 'Helium'; // This line will cause an error.

