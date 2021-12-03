import 'dart:math' as math;

class CappedRange extends IntRangeRefactoring {
  CappedRange(int low, int high, int cap)
      : _cap = cap,
        super(low, high);
  int _cap;

  int get cap => _cap;

  @override
  int get high => math.min(super.high, cap);
}

class IntRangeRefactoring {
  int low, high;

  bool includes(int arg) => arg >= low && arg <= high;

  void grow(int factor) => high = high * factor;

  IntRangeRefactoring(this.low, this.high);
}

//////////////////////////////////////////
class IntRange {
  late int _low, _high;

  bool includes(int arg) => arg >= _low && arg <= _high;

  void grow(int factor) => _high = _high * factor;

  IntRange(int low, int high)
      : _low = low,
        _high = high;
}
