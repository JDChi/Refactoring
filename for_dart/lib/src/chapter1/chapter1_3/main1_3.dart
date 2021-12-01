import 'package:refactoring2/src/base/movie.dart';
import 'package:refactoring2/src/chapter1/chapter1_3/customer.dart';
import 'package:refactoring2/src/chapter1/chapter1_3/rental.dart';

void main() {
  final jane = Customer('Jane');
  jane.addRental(Rental(
      movie: Movie(title: 'movie1', priceCode: Movie.CHILDRENS),
      daysRented: 3));
  jane.addRental(Rental(
      movie: Movie(title: 'movie2', priceCode: Movie.REGULAR), daysRented: 5));
  jane.addRental(Rental(
      movie: Movie(title: 'movie3', priceCode: Movie.NEW_RELEASE),
      daysRented: 1));
  final result = jane.statement();
  print(result);
}
