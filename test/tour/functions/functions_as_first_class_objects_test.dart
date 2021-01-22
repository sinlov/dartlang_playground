// this test for tour => functions : functions_as_first_class_objects
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/functions/functions_as_first_class_objects.dart';

main() {
  group('functions_as_first_class_objects', () {
    test('function as a parameter', () {
       var list = [1, 2, 3];
       list.forEach(countsElement);
       expect(countElement, equals(6));
    });

    test('function to a variable', (){
      var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
      expect(loudify('hello'), equals('!!! HELLO !!!'));
    });
  });
}
