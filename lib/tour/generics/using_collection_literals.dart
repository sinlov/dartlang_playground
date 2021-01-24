// this source for tour => generics : using_collection_literals
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// Parameterized literals are just like the literals you’ve already seen,
// except that you add <type> (for lists and sets) or <keyType, valueType> (for maps)
// before the opening bracket.
var names = <String>['小芸', '小芳', '小民'];
var uniqueNames = <String>{'小芸', '小芳', '小民'};
var pages = <String, String>{
  'index.html': '主页',
  'robots.txt': '网页机器人提示',
  'humans.txt': '我们是人类，不是机器'
};

class SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  // entry
  String toString() => "'Foo<$T>' entry";
}

class Extender extends SomeBaseClass {}