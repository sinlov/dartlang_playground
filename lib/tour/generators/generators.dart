// this source for tour => generators : generators
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// When you need to lazily produce a sequence of values, consider using a generator function.

// Synchronous generator: Returns an Iterable object.
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

// Asynchronous generator: Returns an Stream object.
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

// If your generator is recursive, you can improve its performance by using yield*s
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}