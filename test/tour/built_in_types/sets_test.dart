// this test for tour => built_in_types : sets
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/built_in_types/sets.dart';

main() {
  group('sets', () {
    test('sets create', () {
      expect(halogens.length, equals(5));
      expect(names.length, equals(0));
      expect(namesSet.length, equals(0));
    });

    test('elements', () {
      elements.add('fluorine');
      elements.addAll(halogens);
      expect(elements.length, equals(5));
    });

    test('the spread operator', () {
      var tmp = <String>{
        'fluorine',
        'chlorine',
        'bromine',
        'iodine',
        'astatine'
      };
      var spreadSet = <String>{'spreadSet', ...tmp};
      expect(spreadSet.length, equals(6));
      var setNull;
      var setSpeadNull = <String>{'setSpeadNull', ...?setNull};
      expect(setSpeadNull.length, equals(1));
    });
  });
}
