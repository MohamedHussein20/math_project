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

  int minSalary = salaryList[0];
  int maxSalary = salaryList[0];
  for (int salary in salaryList) {
    if (salary <= minSalary) {
      minSalary = salary;
    }
    if (salary >= maxSalary) {
      maxSalary = salary;
    }
  }

  print("The number of doctors is $numberOfDoctors. \n");
  print("The total salary is $sumOfSalaries. \n");
  print("The average salary is $averageOfSalaries. \n");
  print("The highest salary is $maxSalary. \n");
  print("The lowest salary is $minSalary. \n");

  String highestDoctor = "";
  String lowestDoctor = "";
  for (int i = 0; i < salaryList.length; i++) {
    if (salaryList[i] == maxSalary) {
      highestDoctor = doctorNames[i];
    }
    if (salaryList[i] == minSalary) {
      lowestDoctor = doctorNames[i];
    }
    print("Doctor ${doctorNames[i]} has a salary of ${salaryList[i]}");
  }
  print("The doctor with the highest salary is $highestDoctor. \n");
  print("The doctor with the lowest salary is $lowestDoctor. \n");
}
