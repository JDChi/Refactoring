class EmployeeRefactoring {
  late int _type;
  static const int ENGINEER = 0;
  static const int SALESMAN = 1;
  static const int MANAGER = 2;

  static EmployeeRefactoring createEngineer() {
    return EngineerRefactoring();
  }

  static EmployeeRefactoring createSalesman() {
    return SalesmanRefactoring();
  }

  static EmployeeRefactoring createManager() {
    return ManagerRefactoring();
  }

  EmployeeRefactoring._();

  int get type => _type;
}

class EngineerRefactoring extends EmployeeRefactoring {
  EngineerRefactoring() : super._();

  @override
  int get type => EmployeeRefactoring.ENGINEER;
}

class SalesmanRefactoring extends EmployeeRefactoring {
  SalesmanRefactoring() : super._();

  @override
  int get type => EmployeeRefactoring.SALESMAN;
}

class ManagerRefactoring extends EmployeeRefactoring {
  ManagerRefactoring() : super._();

  @override
  int get type => EmployeeRefactoring.MANAGER;
}

////////////////////////////////////////////////////
class Employee {
  late int _type;
  static const int ENGINEER = 0;
  static const int SALESMAN = 1;
  static const int MANAGER = 2;

  static Employee create(int type) {
    switch (type) {
      case ENGINEER:
        return Engineer();
      case SALESMAN:
        return Salesman();
      case MANAGER:
        return Manager();
      default:
        throw ('Incorrect type code value');
    }
  }

  Employee._();

  Employee._internal(int type) : _type = type;

  int get type => _type;
}

class Engineer extends Employee {
  Engineer() : super._();

  @override
  int get type => Employee.ENGINEER;
}

class Salesman extends Employee {
  Salesman() : super._();

  @override
  int get type => Employee.SALESMAN;
}

class Manager extends Employee {
  Manager() : super._();

  @override
  int get type => Employee.MANAGER;
}
