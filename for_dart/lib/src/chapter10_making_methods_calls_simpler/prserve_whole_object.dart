class RoomRefactoring {
  late TempRangeRefactoring _daysTempRange;

  bool withinPlan(HeatingPlanRefactoring plan) {
    return plan.withinRange(_daysTempRange);
  }
}

class HeatingPlanRefactoring {
  late TempRangeRefactoring _range;

  bool withinRange(TempRangeRefactoring roomRange) {
    return _range.includes(roomRange);
  }
}

class TempRangeRefactoring {
  late int low;
  late int high;

  bool includes(TempRangeRefactoring arg) {
    return arg.low >= low && arg.high <= high;
  }
}

////////////////////////////////////////////////////
class Room {
  late TempRange _daysTempRange;

  bool withinPlan(HeatingPlan plan) {
    int low = _daysTempRange.low;
    int high = _daysTempRange.high;
    return plan.withinRange(low, high);
  }
}

class HeatingPlan {
  late TempRange _range;

  bool withinRange(int low, int high) {
    return low >= _range.low && high <= _range.high;
  }
}

class TempRange {
  late int low;
  late int high;
}
