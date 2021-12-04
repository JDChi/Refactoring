void checkSecurityRefactoring(List<String> people) {
  foundMiscreantRefactoring(people);
  String found = foundPerson(people);
}

String foundPerson(List<String> people) {
  for (var value in people) {
    if (value == 'Don') {
      return 'Don';
    }
    if (value == 'John') {
      return 'John';
    }
  }
  return '';
}

void foundMiscreantRefactoring(List<String> people) {
  if (foundPerson(people) != '') {
    sendAlert();
  }
}

///////////////////////////////////////////////////
void checkSecurity(List<String> people) {
  String found = foundMiscreant(people);
}

String foundMiscreant(List<String> people) {
  for (var value in people) {
    if (value == 'Don') {
      sendAlert();
      return 'Don';
    }
    if (value == 'John') {
      sendAlert();
      return 'John';
    }
  }
  return '';
}

void sendAlert() {}
