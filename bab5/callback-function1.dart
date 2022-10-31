///////////////////////////////////////////////////////////////
// Nama file: callback-function1.dart
///////////////////////////////////////////////////////////////

double calc(double a, double b, Function operation) {
  return operation(a, b);
}

double add(double a, double b) => a + b;
double mul(double a, double b) => a * b;
double div(double a, double b) => a / b;

void main() {
  print('10.0 + 3.0 = ${calc(10.0, 3.0, add)}');
  print('10.0 x 3.0 = ${calc(10.0, 3.0, mul)}');
  print('10.0 / 3.0 = ${calc(10.0, 3.0, div)}');
}
