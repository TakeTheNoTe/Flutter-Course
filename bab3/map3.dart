///////////////////////////////////////////////////////////////
// Nama file: map3.dart
///////////////////////////////////////////////////////////////

void main() {
  Map<String, int> map1 = {};

  // menambah elemen ke dalam map1
  map1['satu'] = 1;
  map1['dua'] = 2;
  map1['tiga'] = 3;

  print('Sebelum dihapus: $map1');

  // menghapus elemen dengan kunci 'dua'
  map1.remove('dua');

  print('Setelah dihapus: $map1');
}
