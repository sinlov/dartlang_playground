// this test for tour => generics : using_generic_methods
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/generics/using_generic_methods.dart';

main() {
  group('using_generic_methods', () {
    test('using generic methods', () {
      var generic = Generic();
      var data = List.from({'one', 'two', 'three'});
      var res = generic.first(data);
      expect(res, equals('one'));
    });
  });
}
