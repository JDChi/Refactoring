class AccountRefactoring {
  late AccountTypeRefactoring _accountType;
  late int _daysOverdrawn;

  double overdraftCharge() {
    return _accountType.overdraftCharge(_daysOverdrawn);
  }
}

class AccountTypeRefactoring {
  double overdraftCharge(int daysOverdrawn) {
    if (isPremium()) {
      double result = 10;
      if (daysOverdrawn > 7) {
        result += (daysOverdrawn - 7) * 0.85;
      }
      return result;
    } else {
      return daysOverdrawn * 1.75;
    }
  }

  bool isPremium() {
    return false;
  }
}

///////////////////////////////////////////////////////
class Account {
  late AccountType _accountType;
  late int _daysOverdrawn;

  double overdraftCharge() {
    if (_accountType.isPremium()) {
      double result = 10;
      if (_daysOverdrawn > 7) {
        result += (_daysOverdrawn - 7) * 0.85;
      }
      return result;
    } else {
      return _daysOverdrawn * 1.75;
    }
  }
}

class AccountType {
  bool isPremium() {
    return false;
  }
}
