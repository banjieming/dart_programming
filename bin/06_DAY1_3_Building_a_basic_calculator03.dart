import 'dart:io';

void main() {
  print("Enter first number:");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter second Number");
  int num2 = int.parse(stdin.readLineSync()!);

  print(num1 + num2);
}
