import 'dart:collection';

/// override == and hashCode
class CurrencyRefactoring {
  final String _code;

  CurrencyRefactoring(String code) : _code = code;

  String get code => _code;

  @override
  int get hashCode => _code.hashCode;

  @override
  bool operator ==(Object other) {
    if (other is CurrencyRefactoring) {
      return other._code == _code;
    }
    return false;
  }
}

/// use const
class CurrencyRefactoring2 {
  final String _code;

  const CurrencyRefactoring2(String code) : _code = code;

  String get code => _code;
}

void main() {
  Currency.loadCurrency();
  final usd = Currency.get('USD');

  assert(CurrencyRefactoring('USD') == CurrencyRefactoring('USD'));
  final usd1 = const CurrencyRefactoring2('USD');
  final usd2 = const CurrencyRefactoring2('USD');
  assert(usd1 == usd2);
}

/////////////////////////////////////////////////////
class Currency {
  final String _code;

  Currency._(String code) : _code = code;

  String get code => _code;

  static final _instances = HashMap<String, Currency>();

  static Currency get(String code) => _instances[code] as Currency;

  static void loadCurrency() {
    Currency._('USD')._store();
    Currency._('CNY')._store();
    Currency._('EUR')._store();
  }

  void _store() {
    _instances[_code] = this;
  }
}
