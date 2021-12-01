import 'package:refactoring2/src/chapter1/chapter1_4/price.dart';

class Movie {
  static const int CHILDRENS = 2;
  static const int REGULAR = 0;
  static const int NEW_RELEASE = 1;

  late String _title;
  late Price _price;

  Movie({required String title, required int priceCode}) {
    _title = title;
    setPriceCode(priceCode);
  }

  String get title => _title;

  double getCharge(int daysRented) {
    return _price.getCharge(daysRented);
  }

  int get priceCode => _price.getPriceCode();

  int getFrequentRenterPoints(int daysRented) {
    return _price.getFrequentRenterPoints(daysRented);
  }

  void setPriceCode(int priceCode) {
    switch (priceCode) {
      case REGULAR:
        _price = RegularPrice();
        break;
      case CHILDRENS:
        _price = ChildrensPrice();
        break;
      case NEW_RELEASE:
        _price = NewReleasePrice();
        break;
    }
  }
}
