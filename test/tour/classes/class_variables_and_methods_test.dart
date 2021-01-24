// this test for tour => classes : class_variables_and_methods
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/classes/class_variables_and_methods.dart';

main() {
  group('class_variables_and_methods', () {
    test('static member', () {
      expect(Queue.initialCapacity, equals(16));
    });

    test('static method', () {
      var a = Point(2, 2);
      var b = Point(4, 4);
      var distance = Point.distanceBetween(a, b);
      expect(2.8< distance && distance< 2.9, isTrue);
    });
  });
}
