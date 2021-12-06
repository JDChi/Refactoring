late double _seniority, _monthsDisabled;
late bool _isPartTime;

double disabilityAmountRefactoring() {
  if (isNotEligibleForDisability()) {
    return 0;
  }

  return 1;
}

bool isNotEligibleForDisability() {
  return (_seniority < 2) || (_monthsDisabled > 12) || _isPartTime;
}

//////////////////////////////////////
double disabilityAmount() {
  if (_seniority < 2) {
    return 0;
  }
  if (_monthsDisabled > 12) {
    return 0;
  }
  if (_isPartTime) {
    return 0;
  }

  return 1;
}
