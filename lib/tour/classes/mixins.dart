// this source for tour => classes : mixins
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// above Dart 2.1 can use mixin

class Performer{

}

// class Musical {
//   bool canConduct;
// }

class Person{
  late String name;
}

class Aggressive{

}

class Demented{

}

class Maestro extends Person
    with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}

class Musician extends Performer with Musical {
  // ···
}

// To implement a mixin, create a class that extends Object and declares no constructors.
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

// using the on keyword to specify the required superclass
mixin MusicalPerformer on Musician {
  // ...
}

class SingerDancer extends Musician with MusicalPerformer {
  // ...
}