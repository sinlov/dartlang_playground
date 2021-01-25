// this test for tour => metadata : metadata
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/metadata/metadata.dart';

main() {
  group('metadata', () {
    test('deprecated override', () {
      var tv = Television();
      // not use tv.activate();
      tv.turnOn();
      // override
       expect(tv.toString(), equals('override Television toString()'));

       expect(tv.turnChannl(10, "info"), equals('10: info'));
    });
  });
}
