import 'package:refactoring2/src/chapter1/chapter1_3/rental.dart';

abstract class Statement {
  String value(CustomerRefactoring customer) {
    String result = headerString(customer);
    for (final rental in customer.rentals) {
      result += eachRentalString(rental);
    }

    result += footerString(customer);
    return result;
  }

  String headerString(CustomerRefactoring customer);

  String eachRentalString(Rental rental);

  String footerString(CustomerRefactoring customer);
}

class TextStatement extends Statement {
  @override
  String headerString(CustomerRefactoring customer) {
    return 'Rental Record for ' + customer.name + '\n';
  }

  @override
  String eachRentalString(Rental rental) {
    return '\t ${rental.movie.title} \t ${rental.getCharge()} \n';
  }

  @override
  String footerString(CustomerRefactoring customer) {
    return 'Amount owed is ${customer.getTotalCharge()}  \nYou earned ${customer.getTotalFrequentRenterPoints()} frequent renter points';
  }

  @override
  String value(CustomerRefactoring customer) {
    String result = headerString(customer);
    for (final rental in customer.rentals) {
      result += eachRentalString(rental);
    }

    result += footerString(customer);
    return result;
  }
}

class HtmlStatement extends Statement {
  @override
  String headerString(CustomerRefactoring customer) {
    return '<H1>Rentals for <EM> ${customer.name} </EM></H1><P>\n';
  }

  @override
  String eachRentalString(Rental rental) {
    return '${rental.movie.title} : ${rental.getCharge()} <BR>\n';
  }

  @override
  String footerString(CustomerRefactoring customer) {
    return '<P>You owe <EM>${customer.getTotalCharge()}</EM><P> \nOn this rental you earned <EM>${customer.getTotalFrequentRenterPoints()}</EM> frequent renter points<P>';
  }

  @override
  String value(CustomerRefactoring customer) {
    String result = headerString(customer);
    for (final rental in customer.rentals) {
      result += eachRentalString(rental);
    }

    result += footerString(customer);
    return result;
  }
}

class CustomerRefactoring {
  late String _name;

  final rentals = <Rental>[];

  CustomerRefactoring(String name) {
    _name = name;
  }

  String get name => _name;

  void addRental(Rental arg) {
    rentals.add(arg);
  }

  String statement() {
    return TextStatement().value(this);
  }

  String htmlStatement() {
    return HtmlStatement().value(this);
  }

  /// Replace Temp with Query
  double getTotalCharge() {
    var result = 0.0;
    for (final rental in rentals) {
      result += rental.getCharge();
    }
    return result;
  }

  /// Replace Temp with Query
  int getTotalFrequentRenterPoints() {
    var result = 0;
    for (final rental in rentals) {
      result += rental.getFrequentRenterPoints();
    }
    return result;
  }
}

//////////////////////////////////////////////////////////////////////
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

  String htmlStatement() {
    String result = '<H1>Rentals for <EM> $name </EM></H1><P>\n';
    for (final rental in _rentals) {
      result += '${rental.movie.title} : ${rental.getCharge()} <BR>\n';
    }

    result += '<P>You owe <EM>${_getTotalCharge()}</EM><P> \n';
    result +=
        'On this rental you earned <EM>${_getTotalFrequentRenterPoints()}</EM> frequent renter points<P>';
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
