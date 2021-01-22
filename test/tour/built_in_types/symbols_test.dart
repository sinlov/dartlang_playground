// this test for tour => built_in_types : symbols
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/built_in_types/symbols.dart';

main() {
  group('symbols', () {
    test('get', () {
       expect(#redex, isNotNull);
       expect(#bar, isNotNull);
    });
  });
}
