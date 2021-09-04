List<int> intersection(List<int> a, List<int> b) {
  return a.toSet().where((element) => b.toSet().contains(element)).toList();
}

void main(List<String> args) {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> result = intersection(a, b);
  print("Lista resultante con elementos en comun y no repetidos: ${result}");
}
