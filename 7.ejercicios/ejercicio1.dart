import 'dart:math';

void main(List<String> args) {
  var rng = new Random();
  List<int> ages = [for (int i = 0; i < 6; i++) rng.nextInt(100)];
  print("Lista no ordenada: $ages");

  ages.sort();
  var min = ages.first;
  var max = ages.last;
  var sum = ages.reduce((current, next) => current + next);

  print("Lista ordenada: $ages");
  print("Edad mayor: $max");
  print("Edad menor: $min");
  print("Edad promedio: ${sum / ages.length}");
}
