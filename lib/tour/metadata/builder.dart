library annotationsdemo.builder;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:dartlang_playground/tour/metadata/metadata_annotations.dart';

// add Builder
Builder AnnotationsdemoBuilder(BuilderOptions options) =>
    LibraryBuilder(AnnotationsDemoGenerator());
