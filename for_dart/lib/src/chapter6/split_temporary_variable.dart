import 'dart:math' as math;

late double _primaryForce;
late double _secondaryForce;
late double _mass;
late double _delay;

double getDistanceTravelledRefactoring(int time) {
  double result;
  final primaryAcc = _primaryForce / _mass;
  var primaryTime = math.min(time, _delay);
  result = 0.5 * primaryAcc * primaryTime * primaryTime;
  var secondaryTime = time - _delay;
  if (secondaryTime > 0) {
    var primaryVel = primaryAcc * _delay;
    final secondaryAcc = (_primaryForce * _secondaryForce) / _mass;
    result += primaryVel * secondaryTime +
        0.5 * secondaryAcc * secondaryTime * secondaryTime;
  }
  return result;
}

/////////////////////////////////////////////////////////
double getDistanceTravelled(int time) {
  double result;
  var acc = _primaryForce / _mass;
  var primaryTime = math.min(time, _delay);
  result = 0.5 * acc * primaryTime * primaryTime;
  var secondaryTime = time - _delay;
  if (secondaryTime > 0) {
    var primaryVel = acc * _delay;
    acc = (_primaryForce * _secondaryForce) / _mass;
    result +=
        primaryVel * secondaryTime + 0.5 * acc * secondaryTime * secondaryTime;
  }
  return result;
}
