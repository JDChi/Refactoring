import 'package:refactoring2/src/chapter6/order.dart';

bool isBasePriceOverRefactoring() {
  return Order().basePrice > 1000;
}

///////////////////////////////////////////////////////
bool isBasePriceOver() {
  var basePrice = Order().basePrice;
  return basePrice > 1000;
}
