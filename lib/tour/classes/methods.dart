// this source for tour => classes : methods
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// abstract method
abstract class Doer {

  int doSomething(); // abstract method
}

class EffectiveDoer extends Doer {
  int doSomething() {
    // implementation, so the method is no longer abstract here
    return 0;
  }
}