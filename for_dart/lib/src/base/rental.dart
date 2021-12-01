import 'package:refactoring2/src/base/movie.dart';

class Rental {
  late Movie _movie;
  late int _daysRented;

  Rental({required Movie movie, required int daysRented}) {
    _movie = movie;
    _daysRented = daysRented;
  }

  Movie get movie => _movie;

  int get dayRented => _daysRented;
}
