// this source for tour => typedefs : typedefs
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// typedefs are restricted to function types. We expect this to change.

/// A typedef, or function-type alias, gives a function type a name that you can use when declaring fields and return types.
/// A typedef retains type information when a function type is assigned to a variable.
/// not use typedef
/// class SortedCollection {
///   Function compare;
///
///   SortedCollection(int f(Object a, Object b)) {
///     compare = f;
///   }
/// }
typedef Compare = int Function(Object a, Object b);

class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

int sort(Object a, Object b) => 0;

typedef CompareType<T> = T Function(T a, T b);

String sortString(String a, String b) => '${a}, ${b}';