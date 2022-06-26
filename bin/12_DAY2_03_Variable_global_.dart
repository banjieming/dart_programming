void main() {
  var price = 300000;
  var discont = checkDiscont(price);
  print("You need to pay: ${price - discont}");
}

num checkDiscont(num price) {
  num discont = 0;
  if (price >= 100000) {
    discont = 50 / 100 * price;
  }
  return discont;
}
