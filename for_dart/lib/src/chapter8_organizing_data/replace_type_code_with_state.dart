class EmployeeRefactoring {
  EmployeeType _type;

  EmployeeRefactoring(EmployeeType type) : _type = type;

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

////////////////////////////////////////////
class Employee {
  final int _type;
  static const int ENGINEER = 0;
  static const int SALESMAN = 1;
  static const int MANAGER = 2;

  Employee(int type) : _type = type;

  late int _monthlySalary;
  late int _commission;
  late int _bonus;

  int payAmount() {
    switch (_type) {
      case ENGINEER:
        return _monthlySalary;
      case SALESMAN:
        return _monthlySalary + _commission;
      case MANAGER:
        return _monthlySalary + _bonus;
      default:
        throw ("Incorrect Employee");
    }
  }
}
