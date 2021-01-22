// this test for tour => built_in_types : runes_and_grapheme_clusters
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/built_in_types/runes_and_grapheme_clusters.dart';
import 'package:characters/characters.dart';

main() {
  group('runes_and_grapheme_clusters', () {
    test('Unicode', () {
       expect(laughing, equals(laughingUFT));
       // want see emoji must use characters
       print('Unicode: print emoji use package:characters/characters.dart as: ${hi.characters.last}');
    });
  });
}
