import 'dart:io';
import 'dart:math';

main() {
  while (true) {
    int number1 = Random().nextInt(10) + 1;
    int number2 = Random().nextInt(10) + 1;

    print("$number1 + $number2 = ");
    int result = int.parse(stdin.readLineSync()!);
    if (result == number1 + number2) {
      print("Correct!");
    } else {
      print("Incorrect. The correct answer is ${number1 + number2}.");
    }
    print("Do you want to continue");
    String answer = stdin.readLineSync()!;
    if (answer == "No") {
      print("The game is over");
      break;
    }
  }
}
