// this test for tour => control_flow_statements : control_flow_statements
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/control_flow_statements/control_flow_statements.dart';

main() {
  group('control_flow_statements', () {
    test('break and continue', () {
      var sb = new StringBuffer();
      var count = 5;
      while (true) {
        if (count < 0) {
          break;
        }
        sb.write('#${count}, ');
        count--;
      }
      expect(sb.toString(), equals('#5, #4, #3, #2, #1, #0, '));

      sb.clear();

      // use where and forEach at using an Iterable.
      var intArr = [1, 2, 3, 4];
      intArr.where((c) => c <= 3).forEach((c) => sb.write('#${c}, '));
      expect(sb.toString(), equals('#1, #2, #3, '));
    });

    test('assert', () {
      var number = 50;
      assert(number < 100, 'number not less than 100');
    });

    test('switch and case', () {
      var status = '';
      var command = 'OPEN';
      switch (command) {
        case 'CLOSED':
          status = 'CLOSED';
          break;
        case 'OPEN':
          status = 'OPEN';
          break;
        default:
          status = 'CLOSED';
      }
      expect(status, equals('OPEN'));
      // fall-through
      command = 'DOING';
      switch (command) {
        case 'CLOSED':
          status = 'CLOSED';
          break;
        case 'DOING':
        case 'OPEN':
          status = 'OPEN';
          break;
        default:
          status = 'CLOSED';
      }
      expect(status, equals('OPEN'));
      // or use continue
      switch (command) {
        case 'CLOSED':
          status = 'CLOSED';
          break;
        case 'OPEN':
          status = 'OPEN';
          continue doJob;
        doJob:
        case 'DOING':
          status = 'DOING';
          break;
        default:
          status = 'CLOSED';
      }
      expect(status, equals('DOING'));
    });

    test('while and do while', () {
      var sb = new StringBuffer();
      var count = 5;
      // while
      while (count > 0) {
        sb.write('#${count}, ');
        count--;
      }
      expect(sb.toString(), equals('#5, #4, #3, #2, #1, '));

      sb.clear();
      // do while
      do {
        sb.write('#${count}, ');
        count++;
      } while (count < 5);
      expect(sb.toString(), equals('#0, #1, #2, #3, #4, '));
    });

    test('for loops', () {
      var message = StringBuffer('Dart is fun');
      for (var i = 0; i < 5; i++) {
        message.write('!');
      }
      expect(message.toString(), equals('Dart is fun!!!!!'));
      var sb = new StringBuffer();
      var intArr = [1, 2, 3];
      // Using forEach() is a good option if you don’t need to know the current iteration counter:
      intArr.forEach((item) {
        sb.write('#${item}, ');
      });
      expect(sb.toString(), equals('#1, #2, #3, '));
      sb.clear();
      // for in
      for (var item in intArr) {
        sb.write('#${item}, ');
      }
      expect(sb.toString(), equals('#1, #2, #3, '));
    });

    test('if and else', () {
      var you = You();
      if (isRaining()) {
        you.bringRainCoat();
      } else if (isSnowing()) {
        you.wearJacket();
      } else {
        you.putTopDown();
      }
      expect('', equals(''));
    });
  });
}
