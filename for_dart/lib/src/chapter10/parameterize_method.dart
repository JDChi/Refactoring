import 'dart:math' as math;

double baseChargeRefactoring() {
  var result = usageInRange(0, 100) * 0.03;
  result += usageInRange(100, 200) * 0.05;
  result += usageInRange(200, double.maxFinite) * 0.07;
  return result;
}

double usageInRange(double start, double end) {
  if (lastUsage() > start) {
    return math.min(lastUsage(), end) - start;
  }
  return 0;
}
///////////////////////////////////////////////////////

double baseCharge() {
  var result = math.min(lastUsage(), 100) * 0.03;
  if (lastUsage() > 100) {
    result += (math.min(lastUsage(), 200) - 100) * 0.05;
  }
  if (lastUsage() > 200) {
    result += (lastUsage() - 200) * 0.07;
  }
  return result;
}

double lastUsage() {
  return 10;
}
