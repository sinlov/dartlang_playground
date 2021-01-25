// this test for tour => callable_classes : callable_classes
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/callable_classes/callable_classes.dart';

main() {
  group('callable_classes', () {
    test('callable classes', () {
      var wf = WannabeFunction();
      var out = wf('Hi', 'there,', 'gang');
      expect(out, equals('Hi there, gang!'));
    });
  });
}
