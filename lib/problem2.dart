import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  String op1;
  op1 = stdin.readLineSync()!;
  int b = int.parse(stdin.readLineSync()!);
  String op2;
  op2 = stdin.readLineSync()!;
  int c = int.parse(stdin.readLineSync()!);
  int d = int.parse(stdin.readLineSync()!);

  

  if (op1 == '+' && op2 == '-') {
    if ((a + b - c) == d) {
      print("Yes");
    }
  } else if (op1 == '+' && op2 == '*') {
    if ((a + b * c) == d) {
      print("Yes");
    }
  } else if (op1 == '-' && op2 == '+') {
    if ((a - b + c) == d) {
      print("Yes");
    }
  } else if (op1 == '-' && op2 == '*') {
    if ((a - b * c) == d) {
      print("Yes");
    }
  } else if (op1 == '*' && op2 == '+') {
    if ((a * b + c) == d) {
      print("Yes");
    }
  } else if (op1 == '*' && op2 == '-') {
    if ((a * b - c) == d) {
      print("Yes");
    }
  } else {
    print("No");
  }
}
