void main() {
  var isAvaliableForDiscont = true;
  var price = 300000;
  var discont = 0;

  if (isAvaliableForDiscont) {
    discont = 50000;
  }

  print("You need to pay: ${price - discont}");
}
