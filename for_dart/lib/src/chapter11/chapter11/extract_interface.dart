double chargeRefactoring(Billable employee, int days) {
  var base = employee.getRate() * days;
  if (employee.hasSpecialSkill()) {
    return base * 1.05;
  }
  return base;
}

class EmployeeRefactoring implements Billable {
  @override
  double getRate() {
    // TODO: implement getRate
    throw UnimplementedError();
  }

  @override
  bool hasSpecialSkill() {
    // TODO: implement hasSpecialSkill
    throw UnimplementedError();
  }

  late String name;
  late String department;
}

abstract class Billable {
  double getRate();

  bool hasSpecialSkill();
}

//////////////////////////////////////////////
double charge(Employee employee, int days) {
  var base = employee.rate * days;
  if (employee.hasSpecialSkill) {
    return base * 1.05;
  }
  return base;
}

class Employee {
  late double rate;
  late bool hasSpecialSkill;
  late String name;
  late String department;
}
