///////////////////////////////////////////////////////////////
// Nama file: try-catch-finally.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void main() {
  int a, b, c;

  stdout.write('Masukkan nilai a: ');
  a = int.parse(stdin.readLineSync().toString());

  stdout.write('Masukkan nilai b: ');
  b = int.parse(stdin.readLineSync().toString());

  try {
    c = a ~/ b;
    print('$a ~/ $b = $c');
  } catch (e, s) {
    print('SALAH: terjadi pembagian dengan nilai 0.');
  } finally {
    print('Bagian finalisasi...');
  }
}
