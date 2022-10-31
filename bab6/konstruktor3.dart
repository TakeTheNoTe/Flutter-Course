///////////////////////////////////////////////////////////////
// Nama file: konstruktor3.dart
///////////////////////////////////////////////////////////////

class Point {
  int x = 0;
  int y = 0;

  // konstruktor standar
  Point() {
    x = 1;
    y = 1;
  }

  // konstruktor dengan parameter x dan y
  Point.createInstance(int x, int y) {
    this.x = x;
    this.y = y;
  }

  // metode lain
  void setLocation(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  // mendeklarasikan dua variabel bertipe Point
  Point a, b;

  // membuat objek dari kelas Point menggunakan konstruktor standar
  a = Point();

  // membuat objek dari kelas Point menggunakan konstruktor bernama
  b = Point.createInstance(2, 3);

  // Nilai x dan y dari objek a dan b
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
  print('Titik b terletak di koordinat (${b.x}, ${b.y})');
}
