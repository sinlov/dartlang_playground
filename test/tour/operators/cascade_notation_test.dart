// this test for tour => operators : cascade_notation
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/operators/cascade_notation.dart';

main() {
  group('cascade_notation', () {
    test('cascade notation', () {
      // the “double dot” notation for cascades is not an operator. It’s just part of the Dart syntax.
      final addressBook = (AddressBookBuilder()
            ..name = 'jenny'
            ..email = 'jenny@example.com'
            ..phone = (PhoneNumberBuilder()
                  ..number = '415-555-0100'
                  ..label = 'home')
                .build())
          .build();
      expect(addressBook, isNotNull);
      expect(addressBook.phone.number, equals('415-555-0100'));
    });
  });
}
