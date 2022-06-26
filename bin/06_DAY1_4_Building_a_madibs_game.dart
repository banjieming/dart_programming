import 'dart:io';

void main() {
  print("Enter a Country:");
  String? country = stdin.readLineSync();

  print("Enter a City:");
  String? city = stdin.readLineSync();

  print("Rose from ${country}");
  print("In ${city}");
}
