import 'package:test/test.dart';
import 'package:dartlang_playground/tour/variables/variables.dart';

void main() {

  String _name;

  setUp((){
    _name = "Bob";
  });

  group('variables', () {
    test('base', () {
      expect(name, equals(_name));
      expect(dName, equals(_name));
      expect(stringName, equals(_name));
    });
  });
}