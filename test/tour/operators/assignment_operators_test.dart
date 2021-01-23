// this test for tour => operators : assignment_operators
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/operators/assignment_operators.dart';

main() {
  group('assignment_operators', () {
    test('assignment', () {
      // assign value to a (Assign value to a)
      a = value;
      expect(a, equals('123'));

      // assign a value if and only if b is null
      b ??= value;
      expect(b, equals('123'));
      c ??= value;
      expect(c, equals('c'));
    });

    test('assignment with operator', (){
      // assignment operators such as += combine an operation with an assignment.
      var aN = 2;
      aN *= number3;
      expect(aN, equals(number6));
    });
  });
}
