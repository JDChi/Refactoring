import 'dart:math' as math;

late double _quantity;
late double _itemPrice;

double priceRefactoring() {
  return basePrice() - quantityDiscount() + shipping();
}

double basePrice() {
  return _quantity * _itemPrice;
}

double quantityDiscount() {
  return math.max(0, _quantity - 500) * _itemPrice * 0.05;
}

double shipping() {
  return math.min(_quantity * _itemPrice * 0.1, 100.0);
}

//////////////////////////////////////////////////////////
double price() {
  return _quantity * _itemPrice -
      math.max(0, _quantity - 500) * _itemPrice * 0.05 +
      math.min(_quantity * _itemPrice * 0.1, 100.0);
}
