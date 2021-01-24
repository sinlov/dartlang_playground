// this source for tour => libraries_and_visibility : using_libraries
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

// use library name to import
// import 'dart:html';

// specifying a library prefix
import 'package:dartlang_playground/tour/libraries_and_visibility/lib1/element.dart';
import 'package:dartlang_playground/tour/libraries_and_visibility/lib2/element.dart' as lib2;
// importing only part of a library
import 'package:dartlang_playground/tour/libraries_and_visibility/only/element.dart' as only show foo;
import 'package:dartlang_playground/tour/libraries_and_visibility/hide/element.dart' as hide hide foo;
// lazily loading a library
// Only dart2js supports deferred loading. Flutter, the Dart VM, and dartdevc don’t support deferred loading.
// ignore: import_deferred_library_with_load_function
import 'package:dartlang_playground/tour/libraries_and_visibility/lazily/hello.dart' deferred as hello;


Element lib1Element (){
  return Element();
}

lib2.Element lib2Element (){
  return lib2.Element();
}

String importShow (){
  return only.foo;
}

String importHide (){
  return hide.bar;
}

String hello_status = '';

Future greet() async {
  await hello.loadLibrary();
  hello_status = hello.status();
}

