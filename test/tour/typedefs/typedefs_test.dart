// this test for tour => typedefs : typedefs
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/typedefs/typedefs.dart';

main() {
  group('typedefs', () {
    test('typedefs', () {
       SortedCollection coll = SortedCollection(sort);
       expect(coll.compare is Function, isTrue);
       expect(coll.compare is Compare, isTrue);
       expect(sortString is CompareType<String>, isTrue);
    });
  });
}
