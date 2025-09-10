import 'package:test/test.dart';
import 'package:dartlang_playground/tour/variables/variables.dart';

void main() {
  String? _name;
  String? _nickname;
  double? _double_bar;
  var _empty_arr;

  setUp(() {
    _name = "Bob";
    _nickname = 'Bobby';
    _double_bar = 1013250.0;
    _empty_arr = [];
  });

  group('variables', () {
    test('base', () {
      expect(name, equals(_name));
      expect(dName, equals(_name));
      expect(stringName, equals(_name));
    });

    test("default-value", () {
      expect(lineCount, equals(null));
    });

    test('final-and-const', () {
      expect(fName, equals(_name));
      expect(nickname, equals(_nickname));
      expect(bar, equals(1000000));
      expect(atm, equals(_double_bar));
      expect(foo, equals(_empty_arr));
      expect(fbar, equals(_empty_arr));
      expect(cfbaz, equals(_empty_arr));
    });
  });

  group('type-test', () {
    test('typecast', () {
      expect(i, isNot(null));
      expect(true, equals(true));
      expect(map[i], equals("int"));
      expect(set.runtimeType.toString(), equals("_ConstSet<int>"));
    });
  });
}
