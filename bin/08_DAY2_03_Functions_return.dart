import 'dart:math';
import 'dart:io';

void main() {
  var firstNumber = 5;
  var secondNumber = 20;
  print(
      "Rata rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}");
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}
