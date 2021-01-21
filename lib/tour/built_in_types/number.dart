var x = 1;
var hex = 0xDEADBEEF;

var y = 1.1;
var exponents = 1.42e5;

// warning: Before Dart 2.1, it was an error to use an integer literal in a double context.
// Dart 2.1 integer literals are automatically converted to doubles when necessaryabstract
double z = 1;

const msPerSecond = 1000;
const secondsUntilRetry = 5;
const msUntilRetry = secondsUntilRetry * msPerSecond;