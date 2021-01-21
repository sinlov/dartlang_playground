var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

var s = 'string interpolation';

var sa1 = 'String '
    'concatenation'
    " works even over line breaks.";

var sa2 = 'The + operator ' + 'works, as well.';

var sMultiLine1 = '''
can create multi-line strings like this
''';

var sMultiLine2 = """This is also a multi-line string.""";

var sRaw = r'In a raw string, not even \n gets special treatment.';

// 😆 Unicode \u{1f600}
// 2.6 'package:characters/characters.dart' can show
var hiEmoji = 'Hi 😆';

// These work in a const string.
const aConstNum = 0;
const aConstBool = true;
const aConstString = 'a constant string';

// These don't work in a const string.
var aNum = 0;
var aBool = true;
var aString = 'a string';
const aConstList = [1, 2, 3];