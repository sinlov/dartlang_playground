// this test for tour => exceptions : exception
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/exceptions/exception.dart';

// more info see: https://dart.cn/guides/libraries/library-tour#exceptions

main() {
  group('exception', () {
    test('throw', () {
      // throw FormatException
      expect(() => {throw FormatException('Expected at last')},
          throwsFormatException);
      // throw arbitrary objects
      expect(() => {throw 'Out of biz'}, throwsA('Out of biz'));

      var point = Point();
      expect(() => {distanceTo(point)}, throwsUnimplementedError);
    });

    test('catch', () {
      //  Use on when you need to specify the exception type.
      // Use catch when your exception handler needs the exception object
      try {
        breedMoreLlamas();
      } on UnimplementedError {
        // specified exception
        expect(buyMoreLlamas(), equals(1));
      } on Exception catch (e) {
        // other types of exceptions
        expect(e, throwsA(''));
      } catch (e) {
        // do not specify the type, handle everything else
        expect(e, isNotNull);
      }
    });

    test('rethrow', () {
      // To partially handle an exception, while allowing it to propagate, use the rethrow keyword.
      try {
        misbehave();
      } catch (e) {
        expect(e, isNotNull, reason: 'NoSuchMethodError');
      }
    });

    test('finally', () {
      try {
        breedMoreLlamas();
      } catch (e) {
        expect(e, isNotNull);
      } finally {
        // always clean up, even if an exception is thrown
        expect(cleanLlamaStalls(), equals(1));
      }
    });
  });
}
