// this test for tour => functions : testing_functions_for_equality
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/functions/testing_functions_for_equality.dart';

main() {
  group('testing_functions_for_equality', () {
    test('functions equality', () {
        var x;
        x = foo;
        // convery top-level function
       expect(foo, equals(x));

       x = A.bar;
       //  convery static function
       expect(A.bar, equals(x));

      // convery entry function
      var v = A();
      var w = A();
      var y = w;
      x = w.baz;
      // has same entry object
      expect(y.baz, equals(x));
      expect(v.baz == w.baz, isFalse);
    });
  });
}
