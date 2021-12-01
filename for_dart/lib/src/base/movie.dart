class Movie {
  static const int CHILDRENS = 2;
  static const int REGULAR = 0;
  static const int NEW_RELEASE = 1;

  late String _title;
  int priceCode;

  Movie({required String title, required this.priceCode}) {
    _title = title;
  }

  String get title => _title;
}
