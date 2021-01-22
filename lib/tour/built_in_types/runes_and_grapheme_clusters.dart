// this source for tour => built_in_types : runes_and_grapheme_clusters
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// In Dart, runes expose the Unicode code points of a string.
// As of Dart 2.6, use the characters package to view or manipulate user-perceived characters, also known as Unicode (extended) grapheme clusters.
// see https://unicode.org/reports/tr29/#Grapheme_Cluster_Boundaries

// Unicode defines a unique numeric value for each letter, digit, and symbol used in all of the world’s writing systems.
// Because a Dart string is a sequence of UTF-16 code units, expressing Unicode code points within a string requires special syntax.
// The usual way to express a Unicode code point is \uXXXX
//  For example, the heart character (♥) is \u2665.

// To specify more or less than 4 hex digits, place the value in curly brackets.
// For example, the laughing emoji (😆) is \u{1f606}

var laughing= '😆';
var laughingUFT = '\u{1f606}';

var hi = 'Hi 😆';