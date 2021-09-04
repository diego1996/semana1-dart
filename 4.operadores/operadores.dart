void main(List<String> args) {
  var var1 = 5;
  var var2 = 4.0;
  var var3 = var1 > 5 ? 'si' : 'no'; // operador terniario
  print(var1);
  print(var2);
  print(var3);

  var var4;
  var var5 = var4 ?? "es nulo"; // ?? valida si la var es nula
  print(var5);
}
