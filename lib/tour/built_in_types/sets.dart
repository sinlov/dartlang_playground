// this source for tour => built_in_types : sets
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// A set in Dart is an unordered collection of unique items. Dart support for sets is provided by set literals and the Set type
// set literals were introduced in Dart 2.2.
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// Dart infers that halogens has the type Set<String>.
// If you try to add the wrong type of value to the set, the analyzer or runtime raises an error.
// more info see: https://dart.cn/guides/language/type-system#type-inference

// create an empty set, use {} preceded by a type argument, or assign {} to a variable of type Set
var names = <String>{};
// or
Set<String> namesSet = {};
// var names = {}; Creates a map, not a set.
// Because map literals came first, {} defaults to the Map type.
// If you forget the type annotation on {} or the variable it’s assigned to, then Dart creates an object of type Map<dynamic, dynamic>.

var elements = <String>{};

// create a set that’s a compile-time constant, add const before the set literal

final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};
// constantSet.add('helium'); // This line will cause an error.