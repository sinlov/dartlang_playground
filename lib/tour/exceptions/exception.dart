// this source for tour => exceptions : exception
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// more info see: https://dart.cn/guides/libraries/library-tour#exceptions

class Point {

}

// you can throw exceptions in => statements, as well as anywhere else that allows expressions
void distanceTo(Point other) => throw UnimplementedError();

void breedMoreLlamas() => throw NoSuchMethodError;

int buyMoreLlamas() {
  return 1;
}

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // allow the caller to view the exception
  }
}

int cleanLlamaStalls() {
  return 1;
}