import 'dart:io';
import 'dart:math';

main() {
  print("Enter a range for number1 and number2");
  int min = int.parse(stdin.readLineSync()!);
  int max = int.parse(stdin.readLineSync()!);

  int correctCounter = 0;
  int inCorrectCounter = 0;
  int levelCounter = 1;
  print("Welcome to level $levelCounter of Random Game :)");
  List operators = ['+', '*', '-', '/'];
  var op = operators[Random().nextInt(operators.length)];
  op = '+';
  while (true) {
    int number1 = Random().nextInt(max - min) + 1;
    int number2 = Random().nextInt(max - min) + 1;

    print("$number1 $op $number2 = ");
    double ans = 0;
    if (op == '+') {
      ans = (number1 + number2).toDouble();
    } else if (op == '-') {
      ans = (number1 - number2).toDouble();
    } else if (op == '*') {
      ans = (number1 * number2).toDouble();
    } else if (op == '/') {
      ans = (number1 / number2).toDouble();
    }
    int result = int.parse(stdin.readLineSync()!);
    if (result == ans) {
      print("Correct!");
      correctCounter++;
    } else if (result != number1 + number2) {
      print("Incorrect. The correct answer is ${number1 + number2}.");
      print("Try Again");
      inCorrectCounter++;
    }
    if (correctCounter == 3) {
      print("Congratulations you have qualified for the next level");
      levelCounter++;
      op = operators[Random().nextInt(operators.length)];
      correctCounter = 0;
      print("Welcome to level $levelCounter of Random Game :)");
    }
    print("Do you want to continue");
    String answer = stdin.readLineSync()!;
    if (answer == "No") {
      print("The game is over");
      break;
    }
  }
  int total = correctCounter + inCorrectCounter;
  int percentage = (correctCounter * 100) ~/ total;
  if(percentage >= 50) {
    print("Congratulations! You passed the game with a score of $percentage%.");
  } else {
    print("You did not pass the game. Your score is $percentage%.");
  }
}
