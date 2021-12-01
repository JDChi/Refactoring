import 'package:refactoring2/src/base/movie.dart';

class Rental {
  late Movie _movie;
  late int _daysRented;

  Rental({required Movie movie, required int daysRented}) {
    _movie = movie;
    _daysRented = daysRented;
  }

  Movie get movie => _movie;

  int get daysRented => _daysRented;

  /// 函数应该放在它所使用的数据的所属对象内，故从 Customer 类里移过来
  double getCharge() {
    var result = 0.0;
    switch (movie.priceCode) {
      case Movie.REGULAR:
        result += 2;
        if (daysRented > 2) {
          result += (daysRented - 2) * 1.5;
        }
        break;
      case Movie.NEW_RELEASE:
        result += daysRented * 3;
        break;
      case Movie.CHILDRENS:
        result += 1.5;
        if (daysRented > 3) {
          result += (daysRented - 3) * 1.5;
        }
        break;
    }
    return result;
  }

  /// Extract Method
  int getFrequentRenterPoints() {
    if ((movie.priceCode == Movie.NEW_RELEASE) && daysRented > 1) {
      return 2;
    }
    return 1;
  }
}
