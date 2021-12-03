class PersonRefactoring {
  final bool isMale;
  final String code;

  PersonRefactoring.male()
      : isMale = true,
        code = 'M';

  PersonRefactoring.female()
      : isMale = false,
        code = 'F';
}

//////////////////////////////////////
abstract class Person {
  bool isMale();

  String getCode();
}

class Male extends Person {
  @override
  String getCode() => 'M';

  @override
  bool isMale() => true;
}

class Female extends Person {
  @override
  String getCode() => 'F';

  @override
  bool isMale() => false;
}
