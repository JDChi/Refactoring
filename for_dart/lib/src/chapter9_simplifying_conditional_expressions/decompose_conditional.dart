final dateTime = DateTime.now();
final summerStart = DateTime(DateTime.june);
final summerEnd = DateTime(DateTime.august);
late double charge, winterRate, winterServiceCharge, summerRate;
late int quantity;

bool notSummer(DateTime dateTime) {
  return dateTime.isBefore(summerStart) || dateTime.isAfter(summerEnd);
}

double summerCharge(int quantity) {
  return quantity * summerRate;
}

double winterCharge(int quantity) {
  return quantity * winterRate + winterServiceCharge;
}

void main1() {
  if (notSummer(dateTime)) {
    charge = winterCharge(quantity);
  } else {
    charge = summerCharge(quantity);
  }
}

/////////////////////////////////////////////
void main() {
  if (dateTime.isBefore(summerStart) || dateTime.isAfter(summerEnd)) {
    charge = quantity * winterRate + winterServiceCharge;
  } else {
    charge = quantity * summerRate;
  }
}
