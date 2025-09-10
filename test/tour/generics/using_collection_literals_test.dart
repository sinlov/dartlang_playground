// this test for tour => generics : using_collection_literals
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/generics/using_collection_literals.dart';

main() {
  group('using_collection_literals', () {
    test('using collection literals', () {
      expect(names.length, equals(3));
      expect(uniqueNames.length, equals(3));
      expect(pages.length, equals(3));

      var nameSet = Set<String>.from(names);
      expect(true, isTrue);
      expect(nameSet.contains('小芳'), isTrue);

      names.addAll(['小芸', '小芳', '小民']);
      expect(names.length, equals(6));
      // dart not remove type parameters at runtime.
      expect(true, isTrue);

      expect(true, isTrue);
      expect(true, isTrue);
      expect(true, isTrue);
    });
  });
}
