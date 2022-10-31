///////////////////////////////////////////////////////////////
// Nama file: map4.dart
///////////////////////////////////////////////////////////////

void main() {
  Map<String, int> map1 = {};

  // menambah elemen ke dalam map1
  map1['apel'] = 10;
  map1['anggur'] = 50;
  map1['durian'] = 10;

  print('Sebelum dihapus: $map1');

  // menghapus elemen dengan kunci
  // yang diawali huruf 'a'
  map1.removeWhere((key, value) => key.startsWith('a'));

  print('Setelah dihapus: $map1');
}
