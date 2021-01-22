// this test for tour => built_in_types : symbols
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';

main() {
  group('symbols', () {
    test('get', () {
      expect(#symbol_redex, isNotNull);
       print('symbol_redex hash: ${#symbol_redex.hashCode}');
       expect(#bar, isNotNull);
    });
  });
}
