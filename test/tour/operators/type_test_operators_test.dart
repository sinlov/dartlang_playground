// this test for tour => operators : type_test_operators
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/operators/type_test_operators.dart';

main() {
  group('type_test_operators', () {
    test('type test', () {
      var emp;
      expect(() => (emp as Person).firstName = 'Bob', throwsNoSuchMethodError,
          reason:
              'in dart 2.12 as to null object will throw NoSuchMethodError()');

      var other = Person();
      other.firstName = 'Bob';
      if (other is Person) {
        expect(other.firstName, equals('Bob'));
      }
    });
  });
}
