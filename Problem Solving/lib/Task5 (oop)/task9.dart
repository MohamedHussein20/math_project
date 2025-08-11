main() {
  PasswordManager passwordManager = PasswordManager("Password@123");
  print(passwordManager.password);

  passwordManager.password = "NewPassword@1";
  print(passwordManager.password);

  passwordManager.password = "123456ab";
  print(passwordManager.password);
}

class PasswordManager {
  String _password;
  PasswordManager(this._password);

  void set password(String password) {
    bool symbolFlag = false;
    bool upperCaseFlag = false;
    bool lowerCaseFlag = false;
    bool numbersFlag = false;
    for (int i = 0; i < password.length; i++) {
      if (password[i].contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        symbolFlag = true;
      } else if (password[i].contains(RegExp(r'[A-Z]'))) {
        upperCaseFlag = true;
      } else if (password[i].contains(RegExp(r'[a-z]'))) {
        lowerCaseFlag = true;
      } else if (password[i].contains(RegExp(r'[0-9]'))) {
        numbersFlag = true;
      }
    }
    if (password.length >= 6 &&
        symbolFlag &&
        upperCaseFlag &&
        lowerCaseFlag &&
        numbersFlag) {
      _password = password;
    } else {
      print(
        "Password must be at least 6 characters long, contain at least one uppercase letter, one lowercase letter, one number, and one special character.",
      );
    }
  }
  String get password => "*" * _password.length;
}
