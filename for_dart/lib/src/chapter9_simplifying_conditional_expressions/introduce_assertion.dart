class EmployeeRefactoring {
  static const double NULL_EXPENSE = -1.0;
  double? _expenseLimit;
  Project? _primaryProject;

  double getExpenseLimit() {
    assert(_expenseLimit != null || _primaryProject != null);
    return _expenseLimit != NULL_EXPENSE
        ? _expenseLimit!
        : _primaryProject!.getMemberExpenseLimit();
  }

  bool withinLimit(double expenseAmount) {
    return expenseAmount <= getExpenseLimit();
  }
}

///////////////////////////////////////////////////////
class Employee {
  static const double NULL_EXPENSE = -1.0;
  double? _expenseLimit;
  Project? _primaryProject;

  double getExpenseLimit() {
    return _expenseLimit != NULL_EXPENSE
        ? _expenseLimit!
        : _primaryProject!.getMemberExpenseLimit();
  }

  bool withinLimit(double expenseAmount) {
    return expenseAmount <= getExpenseLimit();
  }
}

class Project {
  double getMemberExpenseLimit() {
    return 100;
  }
}
