///////////////////////////////////////////////////////////////
// Nama file: konstruktor2.dart
///////////////////////////////////////////////////////////////

class Point {
  int x = 0;
  int y = 0;

  // konstruktor
  Point([this.x = 0, this.y = 0]);

  // metode lain
  void setLocation(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  // mendeklarasikan variabel bertipe Point
  Point a;

  // membuat objek dari kelas Point
  a = Point(2);

  // Nilai x dan y sebelum diubah
  print('Sebelum diubah:');
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');

  // memanggil metode
  a.setLocation(4, 5);

  // Nilai x dan y setelah diubah
  print('\nSetelah diubah:');
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
