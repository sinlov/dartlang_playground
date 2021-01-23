// this test for tour => operators : bitwise_and_shift_operators
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/operators/bitwise_and_shift_operators.dart';

main() {
  group('bitwise_and_shift_operators', () {
    test('bitwise', () {
      expect(value & bitmask, equals(0X02)); // AND
      expect(value & ~bitmask, equals(0X20)); // AND NOT
      expect(value | bitmask, equals(0X2f)); // OR
      expect(value ^ bitmask, equals(0X2d)); // XOR
    });

    test('shift', () {
      expect(value << 4, equals(0X220)); // shift left 4
      expect(value >> 4, equals(0X2)); // shift right 4
    });
  });
}
