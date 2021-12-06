class EmployeeRefactoring {
  late int _type;
  static const int ENGINEER = 0;
  static const int SALESMAN = 1;
  static const int MANAGER = 2;

  static EmployeeRefactoring create(int type) {
    switch (type) {
      case ENGINEER:
        return Engineer();
      case SALESMAN:
        return Salesman();
      case MANAGER:
        return Manager();
    }
    return EmployeeRefactoring._internal(type);
  }

  ////// or
  factory EmployeeRefactoring(int type) {
    switch (type) {
      case ENGINEER:
        return Engineer();
      case SALESMAN:
        return Salesman();
      case MANAGER:
        return Manager();
    }
    return EmployeeRefactoring._internal(type);
  }

  EmployeeRefactoring._();

  EmployeeRefactoring._internal(int type) : _type = type;

  int get type => _type;
}

class Engineer extends EmployeeRefactoring {
  Engineer() : super._();

  @override
  int get type => EmployeeRefactoring.ENGINEER;
}

class Salesman extends EmployeeRefactoring {
  Salesman() : super._();

  @override
  int get type => EmployeeRefactoring.SALESMAN;
}

class Manager extends EmployeeRefactoring {
  Manager() : super._();

  @override
  int get type => EmployeeRefactoring.MANAGER;
}

void main() {
  final manager = EmployeeRefactoring(EmployeeRefactoring.MANAGER);
  assert(manager is Manager);
  final salesman = EmployeeRefactoring.create(EmployeeRefactoring.SALESMAN);
  assert(salesman is Salesman);
}

////////////////////////////////////////////
class Employee {
  int _type;
  static const int ENGINEER = 0;
  static const int SALESMAN = 1;
  static const int MANAGER = 2;

  Employee(int type) : _type = type;

  int get type => _type;
}
