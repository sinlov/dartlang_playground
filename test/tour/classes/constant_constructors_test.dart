// this test for tour => classes : constant_constructors
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/classes/constant_constructors.dart';

main() {
  group('constant_constructors', () {
    test('constant constructors', () {
      var p = const ImmutablePoint(2, 2);
      expect(p.x, equals(2));

      // two identical compile-time constants results in a single, canonical instance
      var a = const ImmutablePoint(1, 1);
      var b = const ImmutablePoint(1, 1);
      expect(a, equals(b));

      // can omit all but the first use of the const keyword
      // If a constant constructor is outside of a constant context and is invoked without const, it creates a non-constant object
      const pointAndLine = {
        'point': [const ImmutablePoint(0, 0)],
        'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)],
      };
      expect(pointAndLine['point']?[0], equals(const ImmutablePoint(0, 0)));
    });
  });
}
