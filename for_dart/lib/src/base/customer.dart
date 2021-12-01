import 'package:refactoring2/src/base/movie.dart';
import 'package:refactoring2/src/base/rental.dart';

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
    var totalAmount = 0.0;
    var frequentRenterPoints = 0;
    String result = 'Rental Record for $name\n';
    for (final rental in _rentals) {
      var thisAmount = 0.0;
      switch (rental.movie.priceCode) {
        case Movie.REGULAR:
          thisAmount += 2;
          if (rental.dayRented > 2) {
            thisAmount += (rental.dayRented - 2) * 1.5;
          }
          break;
        case Movie.NEW_RELEASE:
          thisAmount += rental.dayRented * 3;
          break;
        case Movie.CHILDRENS:
          thisAmount += 1.5;
          if (rental.dayRented > 3) {
            thisAmount += (rental.dayRented - 3) * 1.5;
          }
          break;
      }
      frequentRenterPoints++;
      if ((rental.movie.priceCode == Movie.NEW_RELEASE) &&
          rental.dayRented > 1) {
        frequentRenterPoints++;
      }

      result += '\t  ${rental.movie.title} \t $thisAmount\n';
      totalAmount += thisAmount;
    }

    result += 'Amount owed is $totalAmount\n';
    result += 'You earned $frequentRenterPoints frequent renter points';
    return result;
  }
}
