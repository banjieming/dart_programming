import 'dart:io';

void main() {
  print("Nama Anda: '");
  String? name = stdin.readLineSync();
  print("Usia Anda: '");
  int age = int.parse(stdin.readLineSync()!);

  print("Nama ${name}, Umur ${age}");
}
