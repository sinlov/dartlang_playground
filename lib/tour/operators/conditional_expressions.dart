// this source for tour => operators : conditional_expressions
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

var isPublic = false;

// If the boolean expression tests for null, consider using ?? can let default value.
String playerName(String? name) => name ?? 'Guest';

// Slightly longer version uses ?: operator
String gmName(String? name) => name != null ? name : 'SuperGM';
