// this test for tour => generators : generators
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/generators/generators.dart';

main() {
  group('generators', () {
    test('synchronous generators', () {
      var newNatrual = naturalsTo(10);
      expect(newNatrual.length, equals(10));
      var downFromList = naturalsDownFrom(10);
      expect(downFromList.length, equals(10));
    });

    test('asynchronous generators', () async {
      Stream<int> asyncNatrual = asynchronousNaturalsTo(10);
      await for (var i in asyncNatrual) {
        // print('i: ${i}');
        expect(i < 10 && i > -1, isTrue);
      }
    });
  });
}
