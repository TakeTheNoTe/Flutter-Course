///////////////////////////////////////////////////////////////
// Nama file: tipe-int.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

void main() {
  String nama;
  int umur;

  stdout.write('Masukkan nama Anda: ');
  nama = stdin.readLineSync().toString();

  stdout.write('Masukkan umur: ');
  umur = int.parse(stdin.readLineSync().toString());

  print('\n$nama, sekarang Anda berumur $umur');
}
