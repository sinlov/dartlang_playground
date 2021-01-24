// this test for tour => classes : methods
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/classes/methods.dart';
import 'package:dartlang_playground/tour/classes/point.dart';
import 'package:dartlang_playground/tour/classes/vector.dart';
import 'package:dartlang_playground/tour/classes/rectangle.dart';

main() {
  group('methods', () {
    test('instance methods', () {
      var p = Point(2, 2);
      expect(p.y, equals(2));

      double distance = p.distanceTo(Point(4, 4));
      expect(distance, equals(8));
    });

    test('overwrite operators', () {
      // using the built-in identifier operator, see class Vector.
      final v = Vector(2, 3);
      final w = Vector(2, 2);
      // print('v + w x: ${(v + w).x} y: ${(v + w).y}');
      expect((v + w).x, equals(4));
      expect((v + w).y, equals(5));
      expect((v - w).x, equals(0));
      expect((v - w).y, equals(1));
    });

    test('getter and setter', () {
      // use using the get and set keywords, see class Rectangle.
      var rect = Rectangle(3, 4, 20, 15);
      expect(rect.left, equals(3));
      rect.right = 12;
      expect(rect.left, equals(-8));
    });

    test('abstract methdo', () {
      var effectiveDoer = EffectiveDoer();
      expect(effectiveDoer.doSomething(), equals(0));
    });
  });
}
