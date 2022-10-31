///////////////////////////////////////////////////////////////
// Nama file: parameter-opsional-posisi.dart
///////////////////////////////////////////////////////////////

void printString(String s, [int? n]) {
  if (n == null) n = 1;
  for (int i = 0; i < n; i++) {
    print('${i + 1}. $s');
  }
}

void main() {
  // memanggil fungsi dengan satu argumen
  print('Satu argumen:');
  printString('Dart');

  // memanggil fungsi dengan dua argumen
  print('\nDua argumen:');
  printString('Dart', 3);
}
