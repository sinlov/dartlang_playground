// this test for tour => operators : arithmetic_operators
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/operators/arithmetic_operators.dart';

main() {
  group('arithmetic_operators', () {
    test('arithmetic', () {
      expect(number2 + number3, equals(number5));
      expect(number2 - number3, equals(-1));
      expect(number2 * number3, equals(6));
      expect(number5 / number2, equals(2.5)); // out double
      expect(number5 ~/ number2, equals(number2)); // some as integer
      expect(number5 % number2, equals(1));
      expect('5/2 = ${5 ~/ 2} r ${5 % 2}', equals('5/2 = 2 r 1'));
    });

    test('prefix and postfix increment', () {
      var a, b;

      a = 0;
      b = ++a; // increase a by 1 before b is assigned
      expect(a, equals(1));
      expect(b, equals(1));

      a = 0;
      b = a++; // increase a by 1 after b is assigned
      expect(a, equals(1));
      expect(b, equals(0));

      a = 0;
      b = --a; // decrease a by 1 before assigning b
      expect(a, equals(-1));
      expect(b, equals(-1));

      a = 0;
      b = a--; // decrease a by 1 after b is assigned
      expect(a, equals(-1));
      expect(b, equals(0));
    });
  });
}
