// this test for tour => generics : use_generics
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/generics/use_generics.dart';

main() {
  group('use_generics', () {
    test('use generics', () {
       var bizCache = BizCache.map();
       bizCache.setByKey('one', 'value one');
       expect(bizCache.getByKey('one'), equals('value one'));
    });
  });
}
