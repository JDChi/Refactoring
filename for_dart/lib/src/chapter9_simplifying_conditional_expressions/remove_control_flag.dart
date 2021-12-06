void checkSecurityRefactoring(List<String> people) {
  for (var value in people) {
    if (value == 'Don') {
      sendAlert();
      break;
    }
    if (value == 'John') {
      sendAlert();
      break;
    }
  }
}

void checkSecurityRefactoring2(List<String> people) {
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

//////////////////////////////////////////////////
void checkSecurity(List<String> people) {
  bool found = false;
  for (var value in people) {
    if (!found) {
      if (value == 'Don') {
        sendAlert();
        found = true;
      }
      if (value == 'John') {
        sendAlert();
        found = true;
      }
    }
  }
}

void checkSecurity2(List<String> people) {
  String found = '';
  for (var value in people) {
    if (found == '') {
      if (value == 'Don') {
        sendAlert();
        found = 'Don';
      }
      if (value == 'John') {
        sendAlert();
        found = 'John';
      }
    }
  }
}

void sendAlert() {}
