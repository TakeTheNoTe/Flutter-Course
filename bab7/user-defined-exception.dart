///////////////////////////////////////////////////////////////
// Nama file: user-defined-exception.dart
///////////////////////////////////////////////////////////////

import 'dart:io';

// membuat kelas eksepsi
class NegativeError implements Exception {
  String message = '';

  NegativeError([this.message = '']);
}

void main() {
  int a;

  try {
    stdout.write('Masukkan bilangan non-negatif: ');
    a = int.parse(stdin.readLineSync().toString());

    if (a < 0) {
      throw NegativeError(); // melempar eksepsi NegativeError
    }

    print('Anda memasukkan nilai $a');
  } on FormatException catch (e, s) {
    print('SALAH: Nilai yang dimasukkan bukan bilangan.');
  } on NegativeError catch (e, s) {
    print('SALAH: Anda memasukkan nilai negatif.');
  } catch (e, s) {
    print('SALAH: terjadi eksepsi bertipe $e.');
  }
}
