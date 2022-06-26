void main() {
  var price = 30000;
  var discont = checkDiscont(price);
  print("You need to pay: ${price - discont}");
}

num checkDiscont(num price) {
  num discont = 0;
  if (price >= 30000) {
    discont = 10 / 100 * price;
  }

  return discont;
}
