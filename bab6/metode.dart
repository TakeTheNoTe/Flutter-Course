///////////////////////////////////////////////////////////////
// Nama file: metode.dart
///////////////////////////////////////////////////////////////

class Point {
  int x = 0;
  int y = 0;

  // metode
  void setLocation(int xValue, int yValue) {
    x = xValue;
    y = yValue;
  }
}

void main() {
  // mendeklarasikan variabel bertipe Point
  Point a;

  // membuat objek dari kelas Point
  a = Point();

  // memanggil metode
  a.setLocation(2, 3);

  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
