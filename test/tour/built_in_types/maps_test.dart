// this test for tour => built_in_types : maps
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/built_in_types/maps.dart';

main() {
  group('maps', () {
    test('map constructor', () {
      giftsCon['first'] = 'partridge';
      giftsCon['second'] = 'turtledoves';
      giftsCon['fifth'] = 'golden rings';
      expect(giftsCon['fifth'], equals('golden rings'));

      nobleGasesCon[2] = 'helium';
      nobleGasesCon[10] = 'neon';
      nobleGasesCon[18] = 'argon';
      expect(nobleGasesCon.length, equals(3));
    });

    test('map operator', () {
      // add a key-value pair
      gifts['fourth'] = 'calling birds';
      // get a value by key
      expect(gifts['fourth'], equals('calling birds'));
      // look for a key that isn’t in a map get a null in return
      expect(gifts['abc'], isNull);
      // .length to get the number of key-value pairs in the map
      expect(constantMap.length, equals(3));
    });

    test('the spread operator', () {
      var tmp = {
        // key:    val
        'first': 'partridge',
        'second': 'turtledoves',
        'fifth': 'golden rings'
      };
      var spreadMap = {'spreadMap': 'spreadMap', ...tmp};
      expect(spreadMap.length, equals(4));

      var tmpNull;
      var spreadMapSafe = {'spreadMapSafe': 'spreadMapSafe', ...?tmpNull};
      expect(spreadMapSafe.length, equals(1));
    });
  });
}
