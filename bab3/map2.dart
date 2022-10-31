///////////////////////////////////////////////////////////////
// Nama file: map2.dart
///////////////////////////////////////////////////////////////

void main() {
  Map<String, int> map1 = {};

  // menambah elemen ke dalam map1
  map1['satu'] = 1;
  map1['dua'] = 2;
  map1['tiga'] = 3;

  print('Map awal: $map1');

  // mencoba untuk mengubah elemen dengan kunci 'Dua'
  map1['Dua'] = 99;

  print('Map akhir: $map1');
}
