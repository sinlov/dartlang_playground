// this test for tour => classes : implicit_interfaces
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com
import 'package:test/test.dart';
import 'package:dartlang_playground/tour/classes/implicit_interfaces.dart';

main() {
  group('implicit_interfaces', () {
    test('implicit interfaces', () {
      expect(greetBob(Person('Neo')), equals('hello, Bob. I am Neo.'));
      // implicit will change method greetBob()
      expect(greetBob(Impostor()), equals('hello Bob. Do you known who am I?'));
    });
  });
}
