import 'dart:io';

void main() {
  while (true) {
    int number1, number2;
    String operation;

    print("Enter the first number: ");
    number1 = int.parse(stdin.readLineSync()!);

    print("Enter the second number: ");
    number2 = int.parse(stdin.readLineSync()!);

    print("Enter the operation (+, -, *, /): ");
    operation = stdin.readLineSync()!;

    double result = arithmeticOperation(
      number1: number1.toDouble(),
      number2: number2.toDouble(),
      operation: operation,
    );

    print("The result is: $result");
    print("Do you want to perform another operation? [yes / no]");
    String answer = stdin.readLineSync()!.toLowerCase();
    if (answer != "no") {
      print("The program is finished");
      break;
    } else if (answer != "yes") {
      continue;
    }
  }
}

double arithmeticOperation({
  required double number1,
  required double number2,
  required String operation,
}) {
  if (operation == "+") {
    return number1 + number2;
  } else if (operation == "-") {
    return number1 - number2;
  } else if (operation == "*") {
    return number1 * number2;
  } else if (operation == "/") {
    return number1 / number2;
  } else {
    print("Invalid operation. Please use +, -, *, or /.");
    return 0;
  }
}

double add(double number1, double number2) {
  return arithmeticOperation(
    number1: number1,
    number2: number2,
    operation: "+",
  );
}

double subtract(double number1, double number2) {
  return arithmeticOperation(
    number1: number1,
    number2: number2,
    operation: "-",
  );
}

double multiply(double number1, double number2) {
  return arithmeticOperation(
    number1: number1,
    number2: number2,
    operation: "*",
  );
}

double divide(double number1, double number2) {
  return arithmeticOperation(
    number1: number1,
    number2: number2,
    operation: "/",
  );
}
