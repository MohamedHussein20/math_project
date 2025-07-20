import 'dart:io';
import 'dart:math';

main() {
  print("Enter a range for number1 and number2");
  int min = int.parse(stdin.readLineSync()!);
  int max = int.parse(stdin.readLineSync()!);
  while (true) {
    int number1 = Random().nextInt(max - min + 1);
    int number2 = Random().nextInt(max - min + 1);

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
