class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated attributes: right and bottom。
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;

  // Operators such as increment (++) work in the expected way, whether or not a getter is explicitly defined.
  // To avoid any unexpected side effects, the operator calls the getter exactly once, saving its value in a temporary variable.
}