import 'dart:collection';

class CustomerFactoring {
  final String name;
  static final _instances = HashMap<String, CustomerFactoring>();

  CustomerFactoring._(this.name);

  static CustomerFactoring getNamed(String name) =>
      _instances[name] as CustomerFactoring;

  static void loadCustomers() {
    CustomerFactoring._('Lemon Car Hire')._store();
    CustomerFactoring._('Associated Coffee Machines')._store();
    CustomerFactoring._('Bilston Gasworks')._store();
  }

  void _store() {
    _instances[name] = this;
  }
}

class OrderRefactoring {
  CustomerFactoring _customer;

  OrderRefactoring(String customerName)
      : _customer = CustomerFactoring.getNamed(customerName);

  set customerName(String customerName) =>
      _customer = CustomerFactoring.getNamed(customerName);

  String get customerName => _customer.name;
}

int _numberOfOrdersForRefactoring(List<Order> orders) {
  var result = 0;
  for (final order in orders) {
    if (order.customerName ==
        CustomerFactoring.getNamed(order.customerName).name) {
      result++;
    }
  }
  return result;
}

void main() {
  CustomerFactoring.loadCustomers();
  final customer1 = CustomerFactoring.getNamed('Lemon Car Hire');
}

///////////////////////////////////////////////////////
int _numberOfOrdersFor(List<Order> orders, String customer) {
  var result = 0;
  for (final order in orders) {
    if (order.customerName == customer) {
      result++;
    }
  }
  return result;
}

class Customer {
  final String name;

  Customer(this.name);
}

class Order {
  Customer _customer;

  Order(String customerName) : _customer = Customer(customerName);

  set customerName(String customerName) => _customer = Customer(customerName);

  String get customerName => _customer.name;
}
