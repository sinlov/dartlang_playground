// this source for tour => functions : lexical_closures
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// Functions can close over variables defined in surrounding scopes.
// In the following example, makeAdder() captures the variable addBy.
// Wherever the returned function goes, it remembers addBy.

/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}