///////////////////////////////////////////////////////////////
// Nama file: interpolasi-string.dart
///////////////////////////////////////////////////////////////

void main() {
  var a = 2;
  var b = 3;

  // memanggil variabel di dalam string
  var c = 'Nilai a = $a dan b = $b';
  var d = 'Dart';

  // memanggil metode di dalam string
  print('Interpolasi string dalam ${d.toUpperCase()}');
  print(c);
}
