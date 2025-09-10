// this test for tour => classes : mixins
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/classes/mixins.dart';

main() {
  group('mixins', () {
    test('mixins', () {
      var singerDancer = SingerDancer();
      singerDancer.entertainMe();
    });
  });
}
