///////////////////////////////////////////////////////////////
// Nama file: parameter-opsional-nama.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void printString(String s, {int? n, bool? newLine}) {
  if (n == null) n = 1;
  for (int i = 0; i < n; i++) {
    if (newLine == null) {
      stdout.write('${i + 1}. $s\t');
    } else {
      stdout.writeln('${i + 1}. $s');
    }
  }
}

void main() {
  // memanggil fungsi dengan satu argumen
  print('Satu argumen:');
  printString('Dart');

  // memanggil fungsi dengan dua argumen
  // dengan parameter newLine bernilai null
  print('\n\nDua argumen dengan newLine bernilai null:');
  printString('Dart', n: 3);

  // memanggil fungsi dengan dua argumen
  // dengan parameter newLine bernilai null
  print('\n\nDua argumen dengan n bernilai null:');
  printString('Dart', newLine: true);

  // memanggil fungsi dengan tiga argumen
  print('\nTiga argumen:');
  printString('Dart', n: 3, newLine: true);
}
