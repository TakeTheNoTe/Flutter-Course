///////////////////////////////////////////////////////////////
// Nama file: list6.dart
///////////////////////////////////////////////////////////////

void main() {
  List<int> list1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  print('Sebelum dihapus: $list1');

  // menghapus elemen dengan nilai ganjil
  list1.removeWhere((elemen) => elemen.isOdd);

  print('Setelah dihapus: $list1');
}
