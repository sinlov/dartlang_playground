// this test for tour => classes : enumerated_types
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/classes/enumerated_types.dart';

main() {
  group('enumerated_types', () {
    test('using enums', () {
      // Each value in an enum has an index getter, which returns the zero-based position of the value in the enum declaration.
      expect(Color.red.index, equals(0));
      expect(Color.green.index, equals(1));
      expect(Color.blue.index, equals(2));

      // To get a list of all of the values in the enum, use the enum’s values constant.
      List<Color> colors = Color.values;
      expect(colors[2], equals(Color.blue));
    });

    test('enums in switch', () {
      var aColor = Color.blue;
      switch (aColor) {
        case Color.red:
          print('color is red');
          break;
        case Color.green:
          print('color is green');
          break;
        default:
          print(aColor); // 'Color.blue'
          expect(aColor.index, equals(2));
      }
    });
  });
}
