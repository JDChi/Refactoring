class AccountTypeRefactoring {
  late double interestRate;
}

class AccountRefactoring {
  late AccountTypeRefactoring _type;

  double interestForAmount_days(double amount, int days) {
    return _type.interestRate * amount * days / 365;
  }
}

////////////////////////////////////////////////////
class Account {
  late AccountType _type;
  late double _interestRate;

  double interestForAmount_days(double amount, int days) {
    return _interestRate * amount * days / 365;
  }
}

class AccountType {}
