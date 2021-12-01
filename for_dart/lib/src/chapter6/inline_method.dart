int _numberOfLateDeliveries = 5;

int getRatingRefactoring() {
  return _numberOfLateDeliveries > 5 ? 2 : 1;
}

/////////////////////////////////////////////////
int getRating() {
  return moreThanFiveLateDeliveries() ? 2 : 1;
}

bool moreThanFiveLateDeliveries() {
  return _numberOfLateDeliveries > 5;
}
