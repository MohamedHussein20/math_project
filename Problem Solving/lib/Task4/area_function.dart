import 'dart:io';

main() {
  print(
    "Enter the shape for which you want to calculate the area (square, circle, triangle):",
  );
  String shape = stdin.readLineSync()!.toLowerCase();

  double areaResult = area(shape: shape);

  print("The area of the $shape is: $areaResult");
}

double area({required String shape}) {
  if (shape == "square") {
    print("Enter the side length of the square:");
    double side = double.parse(stdin.readLineSync()!);
    return areaOfSquare(side: side);
  } else if (shape == "circle") {
    print("Enter the radius of the circle:");
    double radius = double.parse(stdin.readLineSync()!);
    return areaOfCircle(radius: radius);
  } else if (shape == "triangle") {
    print("Enter the base and height of the triangle:");
    double base = double.parse(stdin.readLineSync()!);
    double height = double.parse(stdin.readLineSync()!);
    return areaOfTriangle(base: base, height: height);
  } else {
    print("Invalid shape. Please enter square, circle, or triangle.");
    return 0;
  }
}

double areaOfSquare({required double side}) {
  return side * side;
}

double areaOfCircle({required double radius}) {
  return 3.14159 * radius * radius;
}

double areaOfTriangle({required double base, required double height}) {
  return 0.5 * base * height;
}
