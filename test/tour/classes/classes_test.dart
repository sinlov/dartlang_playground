// this test for tour => classes : classes
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/classes/point.dart';
import 'package:dartlang_playground/tour/classes/classes.dart';
import 'dart:convert';

main() {
  group('classes', () {
    test('class members', () {
      var p = Point(2, 2);
      expect(p.y, equals(2));

      double distance = p.distanceTo(Point(4, 4));
      expect(distance, equals(8));
      // If p is non-null, set a variable equal to its y value
      var a = p?.y;
      expect(a, equals(2));
    });

    test('class constructors', () {
      var p1 = Point(2, 2);
      Map<String, dynamic> src = json.decode('{"x":2,"y":2}');
      var p2 = Point.fromJson(src);
      expect(p1.x, equals(p2.x));

      var b = B(4, 1, 1);
      expect(b.x, equals(4));
      expect(b.y, equals(1));
      expect(b.z, equals(1));

      // named constructor
      var c = C.origin();
      expect(c.x, equals(0));
      expect(c.y, equals(0));
      expect(c.z, equals(0));

      // constructor use father named constructor
      var cc = CC();
      expect(cc.x, equals(0));
      expect(cc.y, equals(0));
      expect(cc.z, equals(0));
    });

    test('type', () {
      var a = A();
      expect('${a.runtimeType}', equals('A'));
    });

    test('instance-variables', () {
      var a = A();
      a.x = 4;
      expect(a.x, equals(4));
      expect(a.y, equals(null));
      expect(a.z, equals(0));
    });

    test('debug mode assert', () {
      var d = D.withAssert(0, 1, 2);
      expect(d.x, equals(0));
      expect(d.y, equals(1));
      expect(d.z, equals(2));
    });

    test('final member constructor', () {
      var p = new E(2, 3);
      expect(3.6 < p.distanceFromOrigin && p.distanceFromOrigin < 3.7, isTrue);
    });

    test('redirecting constructors', () {
      var fX = F.alongXAxis(10);
      var fY = F.alongYAxis(10);

      expect(fX.x, equals(10));
      expect(fX.y, equals(0));
      expect(fY.x, equals(0));
      expect(fY.y, equals(10));
    });

    test('factory', (){
      var logger = Logger('UI');
      logger.log('Button clicked');

      var logMap = {'name': 'UI'};
      var loggerJson = Logger.fromJson(logMap);
      loggerJson.log('logMap msg');
    });
  });
}
