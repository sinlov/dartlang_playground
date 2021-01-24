// this source for tour => classes : constant_constructors
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

class ImmutablePoint {
  static final ImmutablePoint origin =
      const ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}
