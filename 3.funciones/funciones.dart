String getName(String value) {
  return 'Nombre: $value';
}

String getName2(String value) => 'Nombre: $value';

getName3({String value = 'diego'}) {
  return 'Nombre: $value';
}

otherFunction(String value1, String value2) {
  return 'Value1: $value1 | Value2: $value2 ';
}

otherFunctionMultipleParams(
    {String? value1, String value2 = 'diego', required String value3}) {
  return 'Value1: $value1 | Value2: $value2 | Value3: $value3 ';
}

otherFunctionOptionalParams(String value1, [int? value2]) {
  return 'Value1: $value1 | Optional: $value2';
}

void main(List<String> args) {
  var anonFunction = (String value) {
    return 'Value1: $value';
  };

  print(getName('Diego'));
  print(getName2('Alejandro'));
  print(getName3(value: 'Asencio Cuellar'));
  print(getName3());
  print(otherFunction('valor1', 'valor2'));
  print(otherFunctionMultipleParams(value2: 'valor2', value3: 'valor3'));
  print(otherFunctionOptionalParams('Hola'));
  print(otherFunctionOptionalParams('Hola', 1));
  print(anonFunction('Diego Alejandro'));
}
