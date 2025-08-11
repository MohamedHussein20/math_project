main() {
  BankAccount account = BankAccount(500);
  print(account.balance);
  account.deposit(50);
  print(account.balance);
  account.withdraw(400);
  print(account.balance);
}

class BankAccount {
  double _balance;
  BankAccount(this._balance);

  void set balance(double balance) {
    if (balance >= 0) {
      _balance = balance;
    } else {
      print("Balance cannot be negative");
    }
  }

  double get balance => _balance;

  void deposit(double amount) {
    if (amount >= 0) {
      _balance += amount;
    }
  }

  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
    }
  }
}
