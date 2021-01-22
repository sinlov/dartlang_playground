// this source for tour => functions : lexical_scope
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// Dart is a lexically scoped language, which means that the scope of variables is determined statically, simply by the layout of the code.
var insideMain = true;

bool myFunction() {
  var insideFunction = true;

  bool nestedFunction() {
    var insideNestedFunction = true;
    assert(insideMain);
    assert(insideFunction);
    assert(insideNestedFunction);
    return insideNestedFunction;
  }
  return nestedFunction();
}
