// this test for tour => operators : equality_and_relational_operators
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/operators/equality_and_relational_operators.dart';

main() {
  group('equality_and_relational_operators', () {
    test('equality relational operators', () {
       expect(number2 == number2, isTrue);
       expect(number2 != number3, isTrue);
       expect(number3 > number2, isTrue);
       expect(number2 < number3, isTrue);
       expect(number3 >= number3, isTrue);
       expect(number2 <= number3, isTrue);
    });
  });
}
