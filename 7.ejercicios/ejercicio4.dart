List<int> getPairs(List<int> list) {
  return list.where((element) => element % 2 == 0).toList();
}

void main(List<String> args) {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> result = getPairs(a);
  print("Lista resultante (solo pares): $result");
}
