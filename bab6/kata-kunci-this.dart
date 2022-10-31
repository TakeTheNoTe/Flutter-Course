///////////////////////////////////////////////////////////////
// Nama file: kata-kunci-this.dart
///////////////////////////////////////////////////////////////

class Point {
  int x = 0;
  int y = 0;

  // metode
  void setLocation(int x, int y) {
    this.x = x;
    this.y = y;
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
