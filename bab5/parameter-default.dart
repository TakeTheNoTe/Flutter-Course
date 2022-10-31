///////////////////////////////////////////////////////////////
// Nama file: parameter-default.dart
///////////////////////////////////////////////////////////////

void printString(String s, [int n = 3]) {
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
  printString('Flutter', 5);
}
