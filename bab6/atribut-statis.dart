///////////////////////////////////////////////////////////////
// Nama file: atribut-statis.dart
///////////////////////////////////////////////////////////////

class Point {
  int _x = 0;
  int _y = 0;

  static int counter = 0; // atribut statis

  // konstruktor standar
  Point() {
    _x = 1;
    _y = 1;

    // menaikkan nilai counter
    counter++;
  }

  // konstruktor dengan parameter x dan y
  Point.createInstance(int x, int y) {
    _x = x;
    _y = y;

    // menaikkan nilai counter
    counter++;
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
  Point a, b, c;

  // membuat objek pertama dari kelas Point
  a = Point();
  print("Pada saat a dibuat, counter bernilai ${Point.counter}");

  // membuat objek kedua dari kelas Point
  b = Point();
  print("Pada saat b dibuat, counter bernilai ${Point.counter}");

  // membuat objek ketiga dari kelas Point
  c = Point();
  print("Pada saat c dibuat, counter bernilai ${Point.counter}");
}
