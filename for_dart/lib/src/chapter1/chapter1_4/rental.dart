import 'package:refactoring2/src/chapter1/chapter1_4/movie.dart';

class Rental {
  late Movie _movie;
  late int _daysRented;

  Rental({required Movie movie, required int daysRented}) {
    _movie = movie;
    _daysRented = daysRented;
  }

  Movie get movie => _movie;

  int get dayRented => _daysRented;

  /// 函数应该放在它所使用的数据的所属对象内，故从 Customer 类里移过来
  double getCharge() {
    return _movie.getCharge(_daysRented);
  }
  
  int getFrequentRenterPoints() {
    return _movie.getFrequentRenterPoints(_daysRented);
  }
}
