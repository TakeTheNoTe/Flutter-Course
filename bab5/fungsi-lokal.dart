///////////////////////////////////////////////////////////////
// Nama file: fungsi-lokal.dart
///////////////////////////////////////////////////////////////

import 'dart:math';

double hypotenuse(double a, double b) {
  // fungsi lokal
  double square(double val) {
    return val * val;
  }

  return sqrt(square(a) + square(b));
}

void main() {
  print('hypotenuse(3.0, 4.0): ${hypotenuse(3.0, 4.0)}');
}
