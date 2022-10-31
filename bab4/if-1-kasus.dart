///////////////////////////////////////////////////////////////
// Nama file: if-1-kasus.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void main() {
  int a;

  stdout.write('Masukkan bilangan bulat: ');
  a = int.parse(stdin.readLineSync().toString());

  if (a > 0) {
    print('$a adalah bilangan bulat positif');
  }
}
