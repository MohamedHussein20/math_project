main() {
  ExamResult examResult = ExamResult("Mohamed", 90);
  print(examResult.result);
}

class ExamResult {
  String _studentName;
  int _score;
  ExamResult(this._studentName, this._score);

  void set studentName(String name) {
    if (name.isNotEmpty) {
      _studentName = name;
    } else {
      print("Student name cannot be empty");
    }
  }

  void set score(int score) {
    if (score >= 0 && score <= 100) {
      _score = score;
    } else {
      print("Score must be between 0 and 100.");
    }
  }

  String get result {
    if (_score >= 85) {
      return "Excellent";
    } else if (_score >= 65 && _score < 85) {
      return "Good";
    } else {
      return "Pass";
    }
  }
}
