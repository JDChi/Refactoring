class EmployeeRefactoring {
  EmployeeTypeRefactoring _type;

  EmployeeRefactoring(EmployeeTypeRefactoring type) : _type = type;

  late int _monthlySalary;
  late int _commission;
  late int _bonus;

  int get type => _type.typeCode;

  set type(int arg) => _type = EmployeeTypeRefactoring.newType(arg);

  int get monthlySalary => _monthlySalary;

  int get commission => _commission;

  int get bonus => _bonus;

  int payAmount() {
    return _type.payAmount(this);
  }
}

abstract class EmployeeTypeRefactoring {
  int get typeCode;

  static const int ENGINEER = 0;
  static const int SALESMAN = 1;
  static const int MANAGER = 2;

  static EmployeeTypeRefactoring newType(int code) {
    switch (code) {
      case ENGINEER:
        return EngineerRefactoring();
      case SALESMAN:
        return SalesmanRefactoring();
      case MANAGER:
        return ManagerRefactoring();
      default:
        throw ('Incorrect Employee Code');
    }
  }

  int payAmount(EmployeeRefactoring employee);
}

class EngineerRefactoring extends EmployeeTypeRefactoring {
  @override
  int get typeCode => EmployeeTypeRefactoring.ENGINEER;

  @override
  int payAmount(EmployeeRefactoring employee) {
    return employee.monthlySalary;
  }
}

class SalesmanRefactoring extends EmployeeTypeRefactoring {
  @override
  int get typeCode => EmployeeTypeRefactoring.SALESMAN;

  @override
  int payAmount(EmployeeRefactoring employee) {
    return employee.monthlySalary + employee.commission;
  }
}

class ManagerRefactoring extends EmployeeTypeRefactoring {
  @override
  int get typeCode => EmployeeTypeRefactoring.MANAGER;

  @override
  int payAmount(EmployeeRefactoring employee) {
    return employee.monthlySalary + employee.bonus;
  }
}

///////////////////////////////////////////////////
class Employee {
  EmployeeType _type;

  Employee(EmployeeType type) : _type = type;

  late int _monthlySalary;
  late int _commission;
  late int _bonus;

  int get type => _type.typeCode;

  set type(int arg) => _type = EmployeeType.newType(arg);

  int payAmount() {
    switch (type) {
      case EmployeeType.ENGINEER:
        return _monthlySalary;
      case EmployeeType.SALESMAN:
        return _monthlySalary + _commission;
      case EmployeeType.MANAGER:
        return _monthlySalary + _bonus;
      default:
        throw ("Incorrect Employee");
    }
  }
}

abstract class EmployeeType {
  int get typeCode;

  static const int ENGINEER = 0;
  static const int SALESMAN = 1;
  static const int MANAGER = 2;

  static EmployeeType newType(int code) {
    switch (code) {
      case ENGINEER:
        return Engineer();
      case SALESMAN:
        return Salesman();
      case MANAGER:
        return Manager();
      default:
        throw ('Incorrect Employee Code');
    }
  }
}

class Engineer extends EmployeeType {
  @override
  int get typeCode => EmployeeType.ENGINEER;
}

class Salesman extends EmployeeType {
  @override
  int get typeCode => EmployeeType.SALESMAN;
}

class Manager extends EmployeeType {
  @override
  int get typeCode => EmployeeType.MANAGER;
}
