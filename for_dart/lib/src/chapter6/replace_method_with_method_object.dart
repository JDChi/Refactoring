class Gamma {
  late AccountRefactoring _account;
  late int _inputVal;
  late int _quantity;
  late int _yearToDate;
  late int _importantValue1;
  late int _importantValue2;
  late int _importantValue3;

  Gamma(
      {required AccountRefactoring account,
      required int inputVal,
      required int quantity,
      required int yearToDate}) {
    _account = account;
    _inputVal = inputVal;
    _quantity = quantity;
    _yearToDate = yearToDate;
  }

  int compute() {
    _importantValue1 = _inputVal * _quantity + _account.delta();
    _importantValue2 = _inputVal * _yearToDate + 100;
    if ((_yearToDate - _importantValue1) > 100) {
      _importantValue2 -= 20;
    }
    _importantValue3 = _importantValue2 * 7;
    return _importantValue3 - 2 * _importantValue1;
  }
}

class AccountRefactoring {
  int gamma(int inputVal, int quantity, int yearToDate) {
    return Gamma(
            account: this,
            inputVal: inputVal,
            quantity: quantity,
            yearToDate: yearToDate)
        .compute();
  }

  int delta() {
    return -1;
  }
}

////////////////////////////////////////////////////////////
class Account {
  int gamma(int inputVal, int quantity, int yearToDate) {
    int importantValue1 = inputVal * quantity + delta();
    int importantValue2 = inputVal * yearToDate + 100;
    if ((yearToDate - importantValue1) > 100) {
      importantValue2 -= 20;
    }
    int importantValue3 = importantValue2 * 7;
    return importantValue3 - 2 * importantValue1;
  }

  int delta() {
    return -1;
  }
}
