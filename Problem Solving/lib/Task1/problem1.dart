import 'dart:io';

void main() {
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int remainder1 = (num1 % 10).toInt();
  int remainder2 = (num2 % 10).toInt();
  print(remainder1 + remainder2);
}
