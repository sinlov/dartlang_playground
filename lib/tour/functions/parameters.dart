// this source for tour => functions : parameters
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:meta/meta.dart';

// have any number of required positional parameters.

// Named parameters are optional unless they’re specifically marked as required.
bool enableFlags({bool bold, bool hidden}) {
  return bold || hidden;
}

// can annotate them with @required to indicate that the parameter is mandatory — that users must provide a value for the parameter.
// use the @required annotation, depend on the meta package and import package:meta/meta.dart.
int sumNumber({@required int number, int sum}) {
  return number + sum;
}

// Wrapping a set of function parameters in [] marks them as optional positional parameters
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// can use = to define default values for both named and positional parameters.
bool defalutFlage({bool bold = false, bool hidden = false}) {
  return bold || hidden;
}

// can also pass lists or maps as default values
List<int> doStuffList({List<int> list = const [1, 2, 3]}) {
  return list;
}

Map<String, String> doStuffMap(
    {Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  return gifts;
}
