// this test for tour => functions : parameters
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/functions/parameters.dart';

main() {
  group('parameters', () {
    test('named parameters', () {
      // you can specify named parameters using paramName: value
      expect(enableFlags(bold: true, hidden: false), isTrue);
    });

    test('mandatory', () {
      // function parameters with required
      expect(sumNumber(number: 1, sum: 2), equals(3));
    });

    test('optional positional parameters', () {
      expect(say('Bob', 'Howdy'), equals('Bob says Howdy'));
      expect(say('Bob', 'Howdy', 'smoke signal'),
          equals('Bob says Howdy with a smoke signal'));
    });

    test('default parameter values', () {
      expect(defalutFlage(bold: true), isTrue);
      expect(doStuffList().length, equals(3));
      expect(doStuffMap().length, equals(3));
    });
  });
}
