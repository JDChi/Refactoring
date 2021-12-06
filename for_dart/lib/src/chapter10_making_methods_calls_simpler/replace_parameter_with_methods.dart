late int _quantity, _itemPrice;

double getPriceRefactoring() {
  if (getDiscountLevel() == 2) {
    return getPrice() * 0.1;
  }
  return getPrice() * 0.05;
}

int getBasePrice() {
  return _quantity * _itemPrice;
}

int getDiscountLevel() {
  if (_quantity > 100) {
    return 2;
  }
  return 1;
}

/////////////////////////////////////////////////////////////////
double getPrice() {
  var basePrice = _quantity * _itemPrice;
  int discountLevel;
  if (_quantity > 100) {
    discountLevel = 2;
  } else {
    discountLevel = 1;
  }
  final finalPrice = discountedPrice(basePrice, discountLevel);
  return finalPrice;
}

double discountedPrice(int basePrice, int discountLevel) {
  if (discountLevel == 2) {
    return basePrice * 0.1;
  }
  return basePrice * 0.05;
}
