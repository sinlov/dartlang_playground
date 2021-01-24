// this test for tour => classes : extending_a_class
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/classes/extending_a_class.dart';

main() {
  group('extending_a_class', () {
    test('extending a class', () {
      var television = Television();
      expect(television.turnOn(), equals(1));

      var smartTelevision = SmartTelevision();
      expect(smartTelevision.turnOn(), equals(1));
    });

    test('overriding members', () {
      var superTelevision = SuperTelevision();
      expect(superTelevision.turnOn(), equals(1));
    });

  });
}
