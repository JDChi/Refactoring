import 'package:refactoring2/src/chapter1/chapter1_4/movie.dart';

abstract class Price {
  int getPriceCode();

  double getCharge(int daysRented);

  int getFrequentRenterPoints(int daysRented) {
    return 1;
  }
}

class ChildrensPrice extends Price {
  @override
  int getPriceCode() {
    return Movie.CHILDRENS;
  }

  @override
  double getCharge(int daysRented) {
    var result = 1.5;
    if (daysRented > 3) {
      result += (daysRented - 3) * 1.5;
    }
    return result;
  }
}

class NewReleasePrice extends Price {
  @override
  int getPriceCode() {
    return Movie.NEW_RELEASE;
  }

  @override
  double getCharge(int daysRented) {
    return daysRented * 3;
  }

  @override
  int getFrequentRenterPoints(int daysRented) {
    return daysRented > 1 ? 2 : 1;
  }
}

class RegularPrice extends Price {
  @override
  int getPriceCode() {
    return Movie.REGULAR;
  }

  @override
  double getCharge(int daysRented) {
    var result = 2.0;
    if (daysRented > 2) {
      result += (daysRented - 2) * 1.5;
    }
    return result;
  }
}
