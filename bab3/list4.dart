///////////////////////////////////////////////////////////////
// Nama file: list4.dart
///////////////////////////////////////////////////////////////

void main() {
  List<int> list1 = [10, 20, 30, 40, 50];

  print('Sebelum dihapus: $list1');

  // menghapus elemen terakhir
  list1.removeLast();

  print('Setelah dihapus: $list1');
}
