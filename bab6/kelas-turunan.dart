///////////////////////////////////////////////////////////////
// Nama file: kelas-turunan.dart
///////////////////////////////////////////////////////////////

class Parent {
  void m1() {
    print('Metode m1() milik kelas Parent');
  }
}

class Child extends Parent {
  void m2() {
    print('Metode m2() milik kelas Child');
  }
}

void main() {
  // mendeklarasikan variabel bertipe Child
  Child obj;

  // membuat objek dari kelas Child
  obj = Child();

  // memanggil metode m1()
  obj.m1();

  // memanggil metode m2()
  obj.m2();
}
