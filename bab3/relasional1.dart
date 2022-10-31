///////////////////////////////////////////////////////////////
// Nama file: relasional1.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void main() {
  double a, b;

  stdout.write('Masukkan nilai a: ');
  a = double.parse(stdin.readLineSync().toString());

  do {
    stdout.write('Masukkan nilai b: ');
    b = double.parse(stdin.readLineSync().toString());

    if (b == 0.0) {
      print('SALAH: Nilai b tidak boleh nol.');
    }
  } while (b == 0.0);

  print('$a / $b: ${a / b}');
}
