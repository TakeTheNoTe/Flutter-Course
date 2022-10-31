///////////////////////////////////////////////////////////////
// Nama file: map1.dart
///////////////////////////////////////////////////////////////

void main() {
  Map<String, int> map1 = {};

  // menambah elemen ke dalam map1
  map1['satu'] = 1;
  map1['dua'] = 2;
  map1['tiga'] = 3;

  print('Sebelum diubah: $map1');

  // mengubah elemen dengan kunci 'dua'
  map1['dua'] = 99;

  print('Setelah diubah: $map1');
}
