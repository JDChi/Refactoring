class TelephoneNumber {
  late String areaCode;
  late String _number;

  String get telephoneNumber => '(+$areaCode)$_number';

  set number(String number) => _number = number;
}

class PersonRefactoring {
  late String _name;
  var _officeTelephone = TelephoneNumber();

  String get telephoneNumber => _officeTelephone.telephoneNumber;

  TelephoneNumber get officeTelephone => _officeTelephone;

  String get name => _name;
}

///////////////////////////////////////////
class Person {
  late String _name;
  late String officeAreaCode;
  late String _officeNumber;

  String get telephoneNumber => '(+$officeAreaCode)$_officeNumber';

  set officeNumber(String number) => _officeNumber = number;

  String get name => _name;
}
