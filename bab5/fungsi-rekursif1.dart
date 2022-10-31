///////////////////////////////////////////////////////////////
// Nama file: fungsi-rekursif1.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void wait(int n) {
  if (n == 0) {
    print('Go!');
    return;
  }
  stdout.write(n.toString() + ' ');
  sleep(Duration(seconds: 1));
  wait(n - 1); // memanggil dirinya sendiri
}

void main() {
  wait(10);
}
