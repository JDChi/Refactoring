void main1() {
  final site = SiteRefactoring();
  final customer = site.customer;
  String customerName = customer.name;
  int weeksDelinquent = customer.history.getWeeksDelinquentInLastYear();
}

class NullCustomer extends CustomerRefactoring {
  @override
  bool isNull() {
    return true;
  }

  @override
  String get name => 'occupant';

  @override
  PaymentHistory get history => NullPaymentHistory();
}

class CustomerRefactoring {
  late String name;
  late PaymentHistory history;

  CustomerRefactoring();

  static CustomerRefactoring newNull() {
    return NullCustomer();
  }

  bool isNull() {
    return false;
  }
}

class SiteRefactoring {
  CustomerRefactoring? _customer;

  CustomerRefactoring get customer =>
      _customer ?? CustomerRefactoring.newNull();

  SiteRefactoring();
}

class NullPaymentHistory extends PaymentHistory {
  @override
  int getWeeksDelinquentInLastYear() {
    return 0;
  }
}

//////////////////////////////////////////////////////////////////////
void main() {
  final site = Site();
  final customer = site.customer;
  String customerName;
  if (customer == null) {
    customerName = 'occupant';
  } else {
    customerName = customer.name;
  }
  int weeksDelinquent;
  if (customer == null) {
    weeksDelinquent = 0;
  } else {
    weeksDelinquent = customer.history.getWeeksDelinquentInLastYear();
  }
}

class Site {
  Customer? customer;

  Site();
}

class Customer {
  late String name;
  late PaymentHistory history;

  Customer();
}

class PaymentHistory {
  int getWeeksDelinquentInLastYear() {
    return 100;
  }
}
