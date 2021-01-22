// this source for tour => functions : function
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

var _nobleGases = [
  '1','2','3','4','5','6','7','8','9'
];

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

// the function still works if you omit the types
isNobleOmit(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

// For functions that contain just one expression, you can use a shorthand syntax
bool isNobleSort(int atomicNumber) => _nobleGases[atomicNumber] != null;
// Only an expression—not a statement—can appear between the arrow (=>) and the semicolon (;).