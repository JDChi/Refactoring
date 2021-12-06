import 'package:refactoring2/src/chapter6_composing_methods//order.dart';

bool isBasePriceOverRefactoring() {
  return Order().basePrice > 1000;
}

///////////////////////////////////////////////////////
bool isBasePriceOver() {
  var basePrice = Order().basePrice;
  return basePrice > 1000;
}
