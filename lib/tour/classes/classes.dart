// this source for tour => classes : classes
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'dart:math';

// All uninitialized instance variables have the value null.
class A {
  double x; // dim double x init to null。
  double y; // dim double y init to null
  double z = 0; // dim double z init to 0。

  // If you don’t declare a constructor, a default constructor is provided for you.
  // The default constructor has no arguments and invokes the no-argument constructor in the superclass.
}

class B {
  double x; // dim double x init to null。
  double y; // dim double y init to null
  double z = 0; // dim double z init to 0。
  B(double x, double y, double z) {
    // this keyword refers to the current instance.
    this.x = x;
    this.y = y;
    this.z = z;
  }
}

class C {
  double x; // dim double x init to null。
  double y; // dim double y init to null
  double z = 0; // dim double z init to 0。
  C.origin() {
    x = 0;
    y = 0;
    z = 0;
  }
}

// If the superclass doesn’t have an unnamed, no-argument constructor, then you must manually call one of the constructors in the superclass.
// Specify the superclass constructor after a colon (:), just before the constructor body (if any)
class CC extends C {
  CC() : super.origin();
  // arguments to the superclass constructor do not have access to this.
}

class D extends A {
  D.withAssert(double x, double y, double z) : assert(x >= 0) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
}

// final constructor
class E {
  final double x;
  final double y;
  final double distanceFromOrigin;
  E(double x, double y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}

// Redirecting constructors
class F {
  double x, y;

  // main constructors
  F(this.x, this.y);

  // delegate to the main constructor y = 0
  F.alongXAxis(double x): this(x, 0);

  // delegate to the main constructor y = 0;
  F.alongYAxis(double y): this(0, y);
}

// factory constructors
// Use the factory keyword when implementing a constructor that doesn’t always create a new instance of its class.
// Factory constructors have no access to this.

class Logger {
  final String name;
  bool mute = false;

  // _cache variable is private to the library because of the underscore in front of its name
  static final Map<String, Logger> _cache =
      <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(
        name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}