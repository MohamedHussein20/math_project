// ignore_for_file: public_member_api_docs, sort_constructors_first
main() {
  Rectangle rectangle1 = Rectangle(10, 20);
  rectangle1.height = 8;
  print("Area of rectangle1: ${rectangle1.area}");
}

class Rectangle {
  double _height;
  double _width;
  Rectangle(this._height, this._width);

  void set height(double height) {
    if (height > 0) {
      _height = height;
    } else {
      print("Height cannot be negative");
    }
  }

  void set width(double width) {
    if (width > 0) {
      _width = width;
    } else {
      print("Width cannot be negative");
    }
  }

  double get area {
    return _height * _width;
  }
}
