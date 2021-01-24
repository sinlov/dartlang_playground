// this source for tour => classes : extending_a_class
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com



// If you override ==, you should also override Object’s hashCode getter.

// base class
class Television {
  int turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
    return 1;
  }

  void _illuminateDisplay() {}

  void _activateIrSensor() {}
  // ···
}

// extends can use supper
class SmartTelevision extends Television {
  int turnOn() {
    _bootNetworkInterface();
    return super.turnOn();
  }

  void _bootNetworkInterface() {}
}

// use override a member.
// If you override ==, you should also override Object’s hashCode getter.
class SuperTelevision extends Television {
  @override
  int turnOn() {
    _bootNetworkInterface();
    return super.turnOn();
  }

  void _bootNetworkInterface() {}
}

class ExampleNoSuchMethod {

  // more info see: https://github.com/dart-lang/sdk/blob/master/docs/language/informal/nosuchmethod-forwarding.md
  @override
  void noSuchMethod(Invocation invocation) {
    print('no such method ${invocation.memberName}');
  }
}
// extension-methods
// https://dart.cn/guides/language/extension-methods
// must use dart 2.7+