// this source for tour => classes : implicit_interfaces
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// A class implements one or more interfaces by declaring them in an implements clause and then providing the APIs required by the interfaces.

// A person. The implicit interface contains greet().
class Person {
  // _name private
  final _name;

  // constract not contain method greet()
  Person(this._name);

  // greet() method at interface.
  String greet(String who) => 'hello, $who. I am $_name.';
}

// Person implements
class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'hello $who. Do you known who am I?';
}

String greetBob(Person person) => person.greet('Bob');

// an example of specifying that a class implements multiple interfaces
// class Point implements Comparable, Location {...}