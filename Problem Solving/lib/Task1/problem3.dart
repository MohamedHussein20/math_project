import 'dart:io';

main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  if ((a >= b) && (b >= c)) {
    print("$c $b $a");
  }
  else if ((a >= c) && (c >= b)) {
    print("$b $c $a");
  }
  else if ((b >= c) && (c >= a)) {
    print("$a $c $b");
  }
  else if ((b >= a) && (a >= c)) {
    print("$c $a $b");
  }
  else if ((c >= a) && (a >= b)) {
    print("$b $a $c");
  }
  else if ((c >= b) && (b >= a)) {
    print("$a $b $c");
  }
}
