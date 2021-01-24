// this test for tour => libraries_and_visibility : using_libraries
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/libraries_and_visibility/using_libraries.dart';

main() {
  group('using_libraries', () {
    test('using libraries', () {
      var lib1E = lib1Element();
      var lib2E = lib2Element();
      expect(lib1E.runtimeType.toString(), equals('Element'));
      expect(lib2E.runtimeType.toString(), equals('Element'));
    });

    test('importing only part of a library', () {
      expect(importShow(), equals('foo'));
      expect(importHide(), equals('bar'));
    });

    test('lazily loading a library', () {
      greet();
      expect(hello_status, equals(''));
    });
  });
}
