///////////////////////////////////////////////////////////////
// Nama file: list7.dart
///////////////////////////////////////////////////////////////

// mendefinisikan kriteria elemen
// yang akan dihapus
bool ganjil(int elemen) {
  return elemen.isOdd;
}

void main() {
  List<int> list1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  print('Sebelum dihapus: $list1');

  // menjadikan fungsi ganjil() sebagai parameter
  // metode removeWhere()
  list1.removeWhere(ganjil);

  print('Setelah dihapus: $list1');
}
