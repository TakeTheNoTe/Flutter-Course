///////////////////////////////////////////////////////////////
// Nama file: variabel-inisialisasi2.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void echo(Object s, [bool newline = true]) {
  stdout.write(s);
  if (newline) stdout.write('\n');
}

void main() {
  echo('Contoh inisialisasi variabel:');
  for (int i = 0; i < 10; i++) {
    echo(i, false);
  }
}
