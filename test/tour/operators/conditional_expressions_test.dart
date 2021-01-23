// this test for tour => operators : conditional_expressions
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/operators/conditional_expressions.dart';

main() {
  group('conditional_expressions', () {
    test('conditional expressions', () {
      //  you need to assign a value based on a boolean expression, consider using ?: .
      var visibility = isPublic ? 'public' : 'private';
      expect(visibility, equals('private'));
      // method playerName use ?? to set default name;
      expect(playerName(null), equals('Guest'));
      expect(gmName(null), equals('SuperGM'));
    });
  });
}
