main() {
  Student student1 = Student(85);
  print("Student 1: ${student1.result}");

  Student student2 = Student(45);
  print("Student 2: ${student2.result}");
}

class Student {
  int _mark;
  Student(this._mark);
  void set mark(int mark) {
    if (mark >= 0 && mark <= 100) {
      _mark = mark;
    } else {
      print("Mark cannot be more than 100 or less than 0");
    }
  }

  String get result {
    if (_mark >= 50) {
      return "Succeeded";
    } else {
      return "Failed";
    }
  }
}
