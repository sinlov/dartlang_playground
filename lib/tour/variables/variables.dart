
var name = 'Bob';

dynamic dName = 'Bob';

String stringName = 'Bob';

int? lineCount;

final fName = 'Bob';

final String nickname = 'Bobby';

// 关键字 const 修饰变量表示该变量为 编译时常量。
// 如果使用 const 修饰类中的变量，则必须加上 static 关键字

const bar = 1000000; // 直接赋值
const double atm = 1.01325 * bar; // 利用其它 const 变量赋值 (Standard atmosphere)

var foo = const [];
final fbar = const [];
const cfbaz = []; // dont use const redundantly


// Valid compile-time constants as of Dart 2.5.
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: "int"}; // Use is and collection if.
const set = {...list}; // ...and a spread.