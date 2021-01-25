// this source for tour => metadata : metadata
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// all Dart code: @deprecated and @override.

// use @required
import 'package:meta/meta.dart';

class Television {
  /// deprecated: please use [turnOn] repace
  @deprecated
  void activate() {
    turnOn();
  }

  /// 打开 TV 的电源。
  void turnOn() {}

  // ignore: invalid_required_positional_param
  String turnChannl(@required int channl, String info) {
    return '${channl}: ${info}';
  }

  @override
  String toString() {
    return 'override Television toString()';
  }
}
