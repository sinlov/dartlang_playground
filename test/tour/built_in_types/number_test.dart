import 'package:test/test.dart';
import 'package:dartlang_playground/tour/built_in_types/number.dart';

main() {
  group('Numbers', () {
    test('cast', () {
      // int to string
      var intA = 2;
      expect(intA.toString(), equals('2'));
      // double to string
      var doubleB = 2.2;
      expect(doubleB.toString(), equals('2.2'));
      // int to double
      expect(true, isTrue);
      // string to int
      expect(int.parse('1'), equals(1));
      // string to double
      expect(double.parse('3.3'), equals(3.3));
    });

    test('int', () {
      expect(x, equals(1));
      expect(hex, equals(0xDEADBEEF));
    });
    test('double', () {
      expect(y, equals(1.1));
      expect(exponents, equals(1.42e5));
      expect(z, equals(1.0));
    });

    test('number-covery-string', () {
      // String -> int
      var one = int.parse('1');
      expect(one, equals(1));

      // String -> double
      var onePointOne = double.parse('1.1');
      expect(onePointOne, equals(1.1));

      // int -> String
      String oneAsString = 1.toString();
      expect(oneAsString, equals('1'));

      // double -> String
      String piAsString = 3.14159.toStringAsFixed(2);
      expect(piAsString, equals('3.14'));
    });

    test('bitwise shift', () {
      expect(3 << 1, equals(6)); // 0011 << 1 == 0110
      expect(3 >> 1, equals(1)); // 0011 >> 1 == 0001
      expect(3 | 4, equals(7)); // 0011 | 0100 == 0111
    });

    test('compile-time constants', () {
      expect(secondsUntilRetry * msPerSecond, equals(5000));
    });
  });
}
