// this source for tour => classes : class_variables_and_methods
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'dart:math';

// Static variables (class variables) are useful for class-wide state and constants:
class Queue {
  // Static variables aren’t initialized until they’re used.
  // preferring lowerCamelCase for constant names.
  // see: https://dart.cn/guides/language/effective-dart/style#identifiers
  static const initialCapacity = 16;
  // ···
}

class Point {
  double x, y;
  Point(this.x, this.y);

  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

// You can use static methods as compile-time constants.
// For example, you can pass a static method as a parameter to a constant constructor.