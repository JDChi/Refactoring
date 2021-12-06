import 'package:refactoring2/src/chapter6_composing_methods//order.dart';

void printOwingRefactoring() {
  printBanner();
  var outstanding = getOutstanding();
  printDetails(outstanding);
}

/// Using Local Variables
void printDetails(double outstanding) {
  print('amount $outstanding\n');
}

/// No Local Variables
void printBanner() {
  print('***********************\n');
  print('**** Customer Owes ****\n');
  print('***********************\n');
}

/// Replace Temp with Query
double getOutstanding() {
  final _orders = <Order>[];
  var result = 0.0;
  for (final order in _orders) {
    result += order.amount;
  }
  return result;
}

//////////////////////////////////////////////////
void printOwing() {
  final orders = <Order>[];
  var outstanding = 0.0;

  print('***********************\n');
  print('**** Customer Owes ****\n');
  print('***********************\n');

  for (final order in orders) {
    outstanding += order.amount;
  }

  print('amount $outstanding\n');
}
