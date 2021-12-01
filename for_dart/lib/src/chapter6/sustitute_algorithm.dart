String foundPersonRefactoring(List<String> people) {
  List candidates = ['Don', 'John', 'Kent'];
  for (int i = 0; i < people.length; i++) {
    if (candidates.contains(people[i])) {
      return people[i];
    }
  }
  return '';
}

///////////////////////////////////////////////////

String foundPerson(List<String> people) {
  for (int i = 0; i < people.length; i++) {
    if (people[i] == 'Don') {
      return 'Don';
    }
    if (people[i] == 'John') {
      return 'John';
    }
    if (people[i] == 'Kent') {
      return 'Kent';
    }
  }
  return '';
}
