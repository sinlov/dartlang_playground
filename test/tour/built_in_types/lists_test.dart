// this test for tour => built_in_types : lists
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/built_in_types/lists.dart';

main() {
  group('lists', () {
    test('length and refer to list values', () {
      listInt = [1, 2, 3];
      expect(listInt.length, equals(3));
      expect(listInt[2], equals(3));
      listInt[1] = 1;
      expect(listInt[1], equals(1));
    });

    // warning spread operator after dart 2.3 see: https://github.com/dart-lang/language/blob/master/accepted/2.3/spread-collections/feature-specification.md
    test('the spread operator', () {
      listInt = [1, 2, 3];
      // use the spread operator (...) to insert all the values of a list into another list
      var listInt2 = [0, ...listInt];
      expect(listInt2.length, equals(4));

      // If the expression to the right of the spread operator might be null.
      // you can avoid exceptions by using a null-aware spread operator (...?)
      var listNull;
      var listInt3 = [0, ...?listNull];
      expect(listInt3.length, equals(1));
    });

    // more info see: https://github.com/dart-lang/language/blob/master/accepted/2.3/control-flow-collections/feature-specification.md
    test('collection if and collection for', () {
      //  using collection if to create a list
      var promoActive = true;
      var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
      expect(nav.length, equals(4));
      promoActive = false;
      nav = [
        'Home',
        'Furniture',
        'Plants',
      ];
      expect(nav.length, equals(3));

      // using collection for to manipulate the items of a list before adding them to another list.
      var listOfInts = [1, 2, 3];
      var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
      expect(listOfStrings.length, equals(4));
      expect(listOfStrings[1], equals('#1'));
    });
  });
}
