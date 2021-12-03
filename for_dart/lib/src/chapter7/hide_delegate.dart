/// hiding the department class from the client
class PersonRefactoring {
  late Department _department;

  Person get manager => _department.manager;
}

/////////////////////////////////////////////
/// e.g. manager = john.department.manager
/// This reveals to the client how the department class works and that the department is responsible to tracking the manager.
class Person {
  late Department _department;

  Department get department => _department;
}

class Department {
  late String chargeCode;
  late Person _manager;

  Department(Person manager) : _manager = manager;

  Person get manager => _manager;
}
