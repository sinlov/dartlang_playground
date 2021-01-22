// this test for tour => functions : lexical_closures
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/functions/lexical_closures.dart';

main() {
  group('lexical_closures', () {
    test('lexical closures', () {
       var add2 = makeAdder(2);
       expect(add2(3), equals(5));
       var add4 = makeAdder(4);
       expect(add4(3), equals(7));
    });
  });
}
