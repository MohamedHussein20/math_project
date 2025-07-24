import 'dart:io';

main() {
  String response;
  String doctorName;
  List<String> doctorNames = [];
  while (true) {
    print("Enter doctor names one by one");
    print("To stop entering names, type 'exit' or press Enter without typing anything.");
    doctorName = stdin.readLineSync()!;
    if (doctorName == "exit" || doctorName.trim().isEmpty) {
      break;
    }
    doctorNames.add(doctorName);
    print("Do you want to enter another doctor's name? [yes / no]");
    response = stdin.readLineSync()!;
    if (response.toLowerCase().trim() == "no") {
      break;
    } else if (response.toLowerCase().trim() == "yes") {
      continue;
    } else {
      print("Invalid answer, Please answer with [yes / no]");
    }
  }
  List<int> salaryList = [];
  int salary;
  print("Enter the salary of every doctor");
  while (true) {
    try {
      salary = int.parse(stdin.readLineSync()!);
      if (salary <= 0) {
        print("This field requires only positive numbers");
      } else {
        salaryList.add(salary);
      }
    } catch (e) {
      print("Invalid input. Please enter a valid integer number");
    }

    if (salaryList.length == doctorNames.length) {
      break;
    } else {
      print("Enter the next value");
    }
  }

  int numberOfDoctors = doctorNames.length;
  int sumOfSalaries = 0;
  for (var i in salaryList) {
    sumOfSalaries += i;
  }
  double averageOfSalaries = (sumOfSalaries / salaryList.length).toDouble();
  salaryList.sort();

  print("The number of doctors is $numberOfDoctors");
  print("The total salary is $sumOfSalaries");
  print("The average salary is $averageOfSalaries");
  print("The highest salary is ${salaryList.last}");
  print("The lowest salary is ${salaryList.first}");
}
