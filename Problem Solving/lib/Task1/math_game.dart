import 'dart:io';

main() {
  List<int> list1 = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29];
  List<int> list2 = [2, 3, 6, 7, 10, 11, 14, 15, 18, 19, 22, 23, 26, 27, 30];
  List<int> list3 = [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30];
  List<int> list4 = [8, 9, 10, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 29, 30];
  List<int> list5 = [
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
  ];
  print("Enter Your age: ");
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 10) {
    print("List 1 : $list1");
    print("List 2 : $list2");
    print("List 3 : $list3");
    print("List 4 : $list4");
    print("List 5 : $list5");
    print("Think of number between 1 and 30");

    int counter = 0;
    print("Does this number exists in list 1 ?");
    String guess1 = stdin.readLineSync()!;
    if (guess1.toLowerCase() == "yes") {
      counter += list1[0];
    }
    print("Does this number exists in list 2 ?");
    String guess2 = stdin.readLineSync()!;
    if (guess2.toLowerCase() == "yes") {
      counter += list2[0];
    }
    print("Does this number exists in list 3 ?");
    String guess3 = stdin.readLineSync()!;
    if (guess3.toLowerCase() == "yes") {
      counter += list3[0];
    }
    print("Does this number exists in list 4 ?");
    String guess4 = stdin.readLineSync()!;
    if (guess4.toLowerCase() == "yes") {
      counter += list4[0];
    }
    print("Does this number exists in list 5 ?");
    String guess5 = stdin.readLineSync()!;
    if (guess5.toLowerCase() == "yes") {
      counter += list5[0];
    }

    print("You think of $counter");
  } else {
    print("You are too young");
  }
}
