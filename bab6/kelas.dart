///////////////////////////////////////////////////////////////
// Nama file: kelas.dart
///////////////////////////////////////////////////////////////

class Point {
  int x = 0;
  int y = 0;
}

void main() {
  // mendeklarasikan variabel bertipe Point
  Point a;

  // membuat objek dari kelas Point
  a = Point();

  // mengakses atribut Point
  a.x = 2;
  a.y = 3;

  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
