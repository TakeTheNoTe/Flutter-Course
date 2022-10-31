///////////////////////////////////////////////////////////////
// Nama file: parameter-map.dart
///////////////////////////////////////////////////////////////

void printMap(Map<String, int> map) {
  map.forEach((k, v) {
    print('$k: $v');
  });
}

void main() {
  Map<String, int> a = {'Jeruk': 35, 'Mangga': 20, 'Apel': 50};

  print('Elemen-elemen map');
  printMap(a);
}
