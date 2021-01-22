// this test for tour => functions : anonymous_functions
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/functions/anonymous_functions.dart';

main() {
  group('anonymous_functions', () {
    test('anonymous functions define', () {
      list.forEach((item) {
        // print('${list.indexOf(item)}: $item');
        expect(item, isNotNull);
      });
    });

    test('anonymous functions arrow notation', (){
      list.forEach(
        (item) => expect(item, isNotNull));
    });
  });
}
