// this test for tour => functions : function
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/functions/function.dart';

main() {
  group('function', () {
    test('define function', () {
      expect(isNoble(1), isTrue);
      expect(isNobleOmit(2), isTrue);
      expect(isNobleSort(3), isTrue);
    });
  });
}
