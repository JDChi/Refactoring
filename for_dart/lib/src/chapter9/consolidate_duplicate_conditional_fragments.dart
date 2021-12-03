late double total, price;

void main1() {
  if (isSpecialDeal()) {
    total = price * 0.95;
  } else {
    total = price * 0.99;
  }
  send();
}
///////////////////////////////////////
void main() {
  if (isSpecialDeal()) {
    total = price * 0.95;
    send();
  } else {
    total = price * 0.99;
    send();
  }
}

bool isSpecialDeal() {
  return true;
}

void send() {

}