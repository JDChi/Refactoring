late bool _isDead, _isSeparated, _isRetired;

double deadAmount() {
  return 0;
}

double separatedAmount() {
  return 1;
}

double retiredAmount() {
  return 2;
}

double normalPayAmount() {
  return 3;
}

double getPayAmountRefactoring() {
  if (_isDead) {
    return deadAmount();
  }
  if (_isSeparated) {
    return separatedAmount();
  }
  if (_isRetired) {
    return retiredAmount();
  }
  return normalPayAmount();
}

/////////////////////////////////////////////
double getPayAmount() {
  double result;
  if (_isDead) {
    result = deadAmount();
  } else {
    if (_isSeparated) {
      result = separatedAmount();
    } else {
      if (_isRetired) {
        result = retiredAmount();
      } else {
        result = normalPayAmount();
      }
    }
  }
  return result;
}
