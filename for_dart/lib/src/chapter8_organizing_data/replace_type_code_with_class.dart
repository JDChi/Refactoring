/// we can also use enum
class BloodGroup {
  static final BloodGroup O = BloodGroup(0);
  static final BloodGroup A = BloodGroup(1);
  static final BloodGroup B = BloodGroup(2);
  static final BloodGroup AB = BloodGroup(3);

  final int _code;

  BloodGroup(int code) : _code = code;
}

class PersonRefactoring {
  BloodGroup bloodGroup;

  PersonRefactoring(this.bloodGroup);
}

void main() {
  PersonRefactoring person = PersonRefactoring(BloodGroup.A);
  person.bloodGroup = BloodGroup.O;
}

///////////////////////////////////////////
class Person {
  static const int O = 0;
  static const int A = 1;
  static const int B = 2;
  static const int AB = 3;

  final int bloodGroup;

  Person(this.bloodGroup);
}
