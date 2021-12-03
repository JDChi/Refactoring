DateTime newStartRefactoring = nextDay(previousEnd);

DateTime nextDay(DateTime arg) {
  return DateTime(arg.year, arg.month, arg.day + 1);
}

void main() {
  print(newStartRefactoring);
}

///////////////////////////////////////////////////////////////////////
DateTime previousEnd = DateTime(2002, 1, 1);
DateTime newStart =
    DateTime(previousEnd.year, previousEnd.month, previousEnd.day + 1);
