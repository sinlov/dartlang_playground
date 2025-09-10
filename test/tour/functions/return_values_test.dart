// this test for tour => functions : return_values
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/functions/return_values.dart';

main() {
  group('return_values', () {
    test('return default values', () {
      expect(foo(), equals(null));
    });
  });
}
