import 'package:test/test.dart';
import 'package:dartlang_playground/tour/built_in_types/string.dart';
import 'package:characters/characters.dart';

main() {
  group('strings-and-regular', () {
    test('Regular expressions', () {
      // regular expression for one or more digits
      var numbers = RegExp(r'\d+');

      var allCharacters = 'llamas live fifteen to twenty years';
      var someDigits = 'llamas live 15 to 20 years';

      // contains() can use a regular expression.
      expect(allCharacters.contains(numbers), isFalse);
      expect(someDigits.contains(numbers), isTrue);

      // Replace every match with another string.
      var exedOut = someDigits.replaceAll(numbers, 'XX');
      expect(exedOut, equals('llamas live XX to XX years'));

      someDigits = 'llamas live 15 to 20 years';
      // Check whether the reg exp has a match in a string
      expect(numbers.hasMatch(someDigits), isTrue);
      // Loop through all matches.
      for (var match in numbers.allMatches(someDigits)) {
        print(
            'Regular expressions match.group(0): ${match.group(0)}'); // 15, then 20
      }
    });

    test('Extracting data from a string', () {
      // get individual UTF-16 code units
      expect('Never odd or even'.substring(6, 9), equals('odd'));
      var parts = 'structured web apps'.split(' ');
      expect(parts.length, equals(3));
      expect(parts[0], equals('structured'));
      // Get a UTF-16 code unit (as a string) by index.
      expect('Never odd or even'[0], equals('N'));
      // Use split() with an empty string parameter to get
      // a list of all characters (as Strings);
      for (var char in 'hello'.split('')) {
        expect(char, isNot(''));
        print('.split(' '): ${char}');
      }
      // Get all the UTF-16 code units in the string.
      var codeUnitList = 'Never odd or even'.codeUnits.toList();
      expect(codeUnitList[0], equals(78));
    });

    test('Building a string', () {
      var sb = StringBuffer();
      sb
        ..write('Use a StringBuffer for ')
        ..writeAll(['efficient', 'string', 'creation'], ' ')
        ..write('.');

      var fullString = sb.toString();
      expect(fullString,
          equals('Use a StringBuffer for efficient string creation.'));
    });

    test('Searching inside a string', () {
      expect('Never odd or even'.contains('odd'), isTrue);
      expect('Never odd or even'.startsWith('Never'), isTrue);
      expect('Never odd or even'.startsWith('odd'), isFalse);
      expect('Never odd or even'.endsWith('even'), isTrue);
      expect('Never odd or even'.endsWith('odd'), isFalse);
      expect('Never odd or even'.indexOf('odd'), equals(6));
    });

    test('Replacing part of a string', () {
      var greetingTemplate = 'Hello, NAME!';
      var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
      expect(greeting != greetingTemplate, isTrue);
      expect(greeting, equals('Hello, Bob!'));
    });

    test('Trimming and empty strings', () {
      // trim a string.
      expect('  hello  '.trim(), equals('hello'));
      expect(''.isEmpty, isTrue);
      expect(' '.isNotEmpty, isTrue);
    });

    test('uppercase or lowercase', () {
      // These methods don’t work for every language. For example, the Turkish alphabet’s dotless I is converted incorrectly.
      expect(
          'structured web apps'.toUpperCase(), equals('STRUCTURED WEB APPS'));
      expect(
          'STRUCTURED WEB APPS'.toLowerCase(), equals('structured web apps'));
    });
  });

  group('Strings', () {
    // A Dart string is a sequence of UTF-16 code units.
    test('quotes', () {
      expect(s1, equals('Single quotes work well for string literals.'));
      expect(s2, equals('Double quotes work just as well.'));
      expect(s3, equals('It\'s easy to escape the string delimiter.'));
      expect(s4, equals("It's even easier to use the other delimiter."));
    });

    test('interpolation', () {
      // use '$s'
      expect('Dart has $s, which is very handy.',
          equals('Dart has string interpolation, which is very handy.'));
      expect(
          'That deserves all caps. ${s.toUpperCase()} is very handy!',
          equals(
              'That deserves all caps. STRING INTERPOLATION is very handy!'));
    });

    test('adjacent string', () {
      expect(sa1, equals('String concatenation works even over line breaks.'));
      expect(sa2, equals('The + operator works, as well.'));
    });

    test('multi-line string', () {
      expect(sMultiLine1, equals('can create multi-line strings like this\n'));
      expect(sMultiLine2, equals('This is also a multi-line string.'));
    });

    test('raw string', () {
      expect(sRaw,
          equals("In a raw string, not even \\n gets special treatment."));
    });

    test('emoji', () {
      // The end of the string hiEmoji substring
      expect(hiEmoji.substring(hiEmoji.length - 1), isNot('😆'));
      // characters/characters can show emoji
      expect(hiEmoji.characters.last, equals('😆'));
    });

    test('strings are compile-time constants', () {
      const validConstString = '$aConstNum $aConstBool $aConstString';
      expect(validConstString, equals('0 true a constant string'));
      // const invalidConstString = '$aNum $aBool $aString $aConstList';
    });
  });
}
