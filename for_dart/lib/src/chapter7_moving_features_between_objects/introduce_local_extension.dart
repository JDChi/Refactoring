DateTime newStartRefactoring = previousEnd.nextDay();

/// use extension method in Dart
extension DateTimeExtension on DateTime {
  DateTime nextDay() {
    return DateTime(year, month, day + 1);
  }
}

//////////////////////////////////////////////////////
DateTime previousEnd = DateTime(2002, 1, 1);
DateTime newStart =
    DateTime(previousEnd.year, previousEnd.month, previousEnd.day + 1);
