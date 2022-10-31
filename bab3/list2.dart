///////////////////////////////////////////////////////////////
// Nama file: list2.dart
///////////////////////////////////////////////////////////////

void main() {
  List<int> list1 = [10, 20, 30];

  print('Sebelum dihapus: $list1');

  // menghapus elemen dengan nilai 20
  list1.remove(20);

  print('Setelah dihapus: $list1');
}
