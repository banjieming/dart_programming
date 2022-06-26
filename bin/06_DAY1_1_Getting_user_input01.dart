import 'dart:math';
import 'dart:io';

void main() {
  print("What is your name?:");
  String? name = stdin.readLineSync();
  print("Company name:");
  String? companyName = stdin.readLineSync();

  print("Student name is ${name}, Company name is ${companyName}");
}
