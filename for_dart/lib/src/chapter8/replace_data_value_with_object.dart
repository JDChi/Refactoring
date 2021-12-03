class Customer {
  final String name;

  Customer(this.name);
}

class OrderRefactoring {
  Customer _customer;

  OrderRefactoring(String customerName) : _customer = Customer(customerName);

  set customerName(String customerName) => _customer = Customer(customerName);

  String get customerName => _customer.name;
}

/////////////////////////////////////////////////
class Order {
  final String customer;

  Order(this.customer);
}
