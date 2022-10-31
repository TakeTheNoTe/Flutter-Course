///////////////////////////////////////////////////////////////
// Nama file: if-2-kasus1.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void main() {
  int a;

  stdout.write('Masukkan bilangan bulat: ');
  a = int.parse(stdin.readLineSync().toString());

  if (a.isOdd) {
    print('$a adalah bilangan ganjil');
  } else {
    print('$a adalah bilangan genap');
  }
}
