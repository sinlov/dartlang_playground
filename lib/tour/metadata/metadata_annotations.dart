// this source for tour => metadata : metadata_annotations
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

library annotationsdemo;

import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';

class annotationsdemo {
  final String who;
  final String what;

  const annotationsdemo(this.who, this.what);
}

class AnnotationsDemoGenerator extends GeneratorForAnnotation<annotationsdemo> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    return "class Tessss{}";
  }
}
