import 'dart:io';

void main() {
  print("Enter the student's name:");
  String name = stdin.readLineSync()!;

  print("Enter the grades for 5 subjects:");

  print("Grade 1:");
  int grade1 = int.parse(stdin.readLineSync()!);

  print("Grade 2:");
  int grade2 = int.parse(stdin.readLineSync()!);

  print("Grade 3:");
  int grade3 = int.parse(stdin.readLineSync()!);

  print("Grade 4:");
  int grade4 = int.parse(stdin.readLineSync()!);

  print("Grade 5:");
  int grade5 = int.parse(stdin.readLineSync()!);

  double percentage = percentageOfGrades(
    name: name,
    grade1: grade1,
    grade2: grade2,
    grade3: grade3,
    grade4: grade4,
    grade5: grade5,
  );
  if (percentage >= 50) {
    print("$name has passed with a percentage of $percentage%");
  } else {
    print("$name has failed with a percentage of $percentage%");
    
  }
}

double percentageOfGrades({
  required String name,
  required int grade1,
  required int grade2,
  required int grade3,
  required int grade4,
  required int grade5,
}) {
  int sum = grade1 + grade2 + grade3 + grade4 + grade5;
  double percentage = (sum / 500) * 100;
  return percentage;
}
