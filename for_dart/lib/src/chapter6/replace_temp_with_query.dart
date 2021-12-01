late int _quantity;
late int _itemPrice;

double getPriceRefactoring() {
  return _basePrice() * discountFactor();
}

int _basePrice() {
  return _quantity * _itemPrice;
}

double discountFactor() {
  if (_basePrice() > 1000) {
    return 0.95;
  } else {
    return 0.98;
  }
}

///////////////////////////////////////////////
double getPrice() {
  int basePrice = _quantity * _itemPrice;
  double discountFactor;
  if (basePrice > 1000) {
    discountFactor = 0.95;
  } else {
    discountFactor = 0.98;
  }
  return basePrice * discountFactor;
}
