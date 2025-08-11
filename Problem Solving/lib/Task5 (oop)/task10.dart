import 'dart:math';

main() {
  Circle circle = Circle(5);
  print(circle.area);
  print(circle.perimeter);
}

class Circle {
  double _radius;
  Circle(this._radius);

  set radius(double radius) {
    if (radius > 0) {
      _radius = radius;
    } else {
      print("Radius must be positive");
    }
  }

  double get area => pi * _radius * _radius;
  double get perimeter => 2 * pi * _radius;
}
