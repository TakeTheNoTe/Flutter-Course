///////////////////////////////////////////////////////////////
// Nama file: setter-getter.dart
///////////////////////////////////////////////////////////////

class Point {
  int _x = 0;
  int _y = 0;

  // konstruktor standar
  Point() {
    _x = 1;
    _y = 1;
  }

  // konstruktor dengan parameter x dan y
  Point.createInstance(int x, int y) {
    _x = x;
    _y = y;
  }

  // metode lain
  void setLocation(int x, int y) {
    _x = x;
    _y = y;
  }

  // setter
  set x(int value) {
    _x = value;
  }

  set y(int value) {
    _y = value;
  }

  // getter
  int get x {
    return _x;
  }

  int get y {
    return _y;
  }
}

void main() {
  // mendeklarasikan variabel bertipe Point
  Point a;

  // membuat objek dari kelas Point
  a = Point();

  // memanggil metode setter
  a.x = 2;
  a.y = 3;

  // memanggil metode getter
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
