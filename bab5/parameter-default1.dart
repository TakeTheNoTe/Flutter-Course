///////////////////////////////////////////////////////////////
// Nama file: parameter-default1.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void printString(String s, {int n = 3, bool newLine = false}) {
  for (int i = 0; i < n; i++) {
    if (!newLine) {
      stdout.write('${i + 1}. $s\t');
    } else {
      stdout.writeln('${i + 1}. $s');
    }
  }
}

void main() {
  // memanggil fungsi dengan satu argumen,
  // parameter n bernilai 3 dan
  // parameter newLine bernilai false
  print('Satu argumen dengan n=3 dan newLine=false:');
  printString('Dart');

  // memanggil fungsi dengan dua argumen,
  // parameter n bernilai 2 dan
  // parameter newLine bernilai false
  print('\n\nDua argumen dengan n=2 dan newLine=false:');
  printString('Dart', n: 2);

  // memanggil fungsi dengan dua argumen,
  // parameter n bernilai 3 dan
  // parameter newLine bernilai true
  print('\n\nDua argumen dengan n=3 dan newLine=true:');
  printString('Dart', newLine: true);

  // memanggil fungsi dengan tiga argumen,
  // parameter n bernilai 5 dan
  // parameter newLine bernilai true
  print('\nTiga argumen dengan n=5 dan newLine=true:');
  printString('Dart', n: 5, newLine: true);
}
