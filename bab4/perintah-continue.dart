///////////////////////////////////////////////////////////////
// Nama file: perintah-continue.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void main() {
  for (int i = 0; i < 10; i++) {
    if (i.isEven) {
      continue; // melanjutkan ke nilai i berikutnya
    }

    stdout.write('$i ');
  }
}
