///////////////////////////////////////////////////////////////
// Nama file: list3.dart
///////////////////////////////////////////////////////////////

void main() {
  List<int> list1 = [10, 20, 30];

  print('Sebelum dihapus: $list1');

  // menghapus elemen indeks ke-2 (elemen ketiga)
  list1.removeAt(2);

  print('Setelah dihapus: $list1');
}
