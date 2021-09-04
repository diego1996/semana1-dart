void main(List<String> args) {
  var firstName = "Diego"; // tipo de variable implicita
  String lastName = "Alejandro"; // tipo de variable explicita (type)

  var age = 24;
  int age2 = 24;

  var test; // variable dynamic
  print(test); // null

  test = "test"; // dymanic
  print(test);

  test = 0.5;
  print(test);

  print(firstName);
  print(lastName);

  print(age);
  print(age2);

  print("${firstName.toUpperCase()} ${lastName.toUpperCase()}"); // format strs

  int? nullVariable = null; // null safety
  String? nullVariable2 = null; // null safety
  print(nullVariable);
  print(nullVariable2);

  final String finalVariable = "Hola"; // final variables
  const String constVariable = "Hola"; // const variables

  print(finalVariable);
  print(constVariable);
}
