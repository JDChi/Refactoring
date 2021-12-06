class Performance {
  late String name;
  late String wins;
}

void main1() {
  final row = Performance();
  row.name = 'Liverpool';
  row.wins = '15';
  final name = row.name;
  final wins = int.tryParse(row.wins);
}

/////////////////////////////////////////////
void main() {
  var row = List<dynamic>.filled(3, []);
  row[0] = 'Liverpool';
  row[1] = '15';
  final name = row[0];
  final wins = int.tryParse(row[1]);
}
