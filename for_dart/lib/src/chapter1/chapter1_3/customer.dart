import 'package:refactoring2/src/chapter1/chapter1_3/rental.dart';

/// 对 statement() 进行分解和重组
class Customer {
  late String _name;
  final _rentals = <Rental>[];

  Customer(String name) {
    _name = name;
  }

  String get name => _name;

  void addRental(Rental arg) {
    _rentals.add(arg);
  }

  String statement() {
    String result = 'Rental Record for ' + name + '\n';
    for (final rental in _rentals) {
      result += '\t ${rental.movie.title} \t ${rental.getCharge()} \n';
    }

    result += 'Amount owed is ${_getTotalCharge()}  \n';
    result +=
        'You earned ${_getTotalFrequentRenterPoints()} frequent renter points';
    return result;
  }

  /// Replace Temp with Query
  double _getTotalCharge() {
    var result = 0.0;
    for (final rental in _rentals) {
      result += rental.getCharge();
    }
    return result;
  }

  /// Replace Temp with Query
  int _getTotalFrequentRenterPoints() {
    var result = 0;
    for (final rental in _rentals) {
      result += rental.getFrequentRenterPoints();
    }
    return result;
  }
}
