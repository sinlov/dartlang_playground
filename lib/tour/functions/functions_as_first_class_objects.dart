// this source for tour => functions : functions_as_first_class_objects
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// can pass a function as a parameter to another function.

var countElement = 0;

void countsElement(int element) {
  print(element);
  countElement = countElement + element;
}
