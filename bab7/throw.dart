///////////////////////////////////////////////////////////////
// Nama file: throw.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void main() {
  int a, b, c;

  stdout.write('Masukkan nilai a: ');
  a = int.parse(stdin.readLineSync().toString());

  stdout.write('Masukkan nilai b: ');
  b = int.parse(stdin.readLineSync().toString());

  if (b == 0) {
    // melempar eksepsi
    throw IntegerDivisionByZeroException();
  }

  // pembagian bilangan bulat (sisa bagi akan diabaikan)
  c = a ~/ b;

  print('$a ~/ $b = $c');
}
