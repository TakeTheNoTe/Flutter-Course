///////////////////////////////////////////////////////////////
// Nama file: list5.dart
///////////////////////////////////////////////////////////////

void main() {
  List<int> list1 = [10, 20, 30, 40, 50];

  print('Sebelum dihapus: $list1');

  // menghapus elemen dari indeks ke-1 sampai ke-3
  list1.removeRange(1, 4); // elemen indeks ke-4 tidak dihapus

  print('Setelah dihapus: $list1');
}
