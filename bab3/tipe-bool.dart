///////////////////////////////////////////////////////////////
// Nama file: tipe-bool.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

bool odd(int x) => x % 2 == 1;

void main() {
  for (int i = 0; i < 10; i++) {
    stdout.write('$i adalah bilangan ');
    stdout.writeln(odd(i) ? 'ganjil' : 'genap');
  }
}
