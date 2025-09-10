import 'dart:math';
import 'package:json_annotation/json_annotation.dart';

part 'point.g.dart';

@JsonSerializable()
class Point extends Object {
  @JsonKey(name: 'x')
  int? x;

  @JsonKey(name: 'y')
  int? y;

  Point(
    this.x,
    this.y,
  );

  factory Point.fromJson(Map<String, dynamic> srcJson) =>
      _$PointFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PointToJson(this);

  // point return (x1-x2)^2 + (y1-y2)^2
  double distanceTo(Point p) {
    return (pow((this.x ?? 0) - (p.x ?? 0), 2) +
            pow((this.y ?? 0) - (p.y ?? 0), 2))
        .toDouble();
  }
}
