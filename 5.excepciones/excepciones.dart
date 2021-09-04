String getName({required String name}) {
  if (name == 'juan') {
    throw ("El valor no puede ser $name. Excepción!");
  }
  return name;
}

void main(List<String> args) {
  try {
    print(getName(name: 'diego'));
    var x = 5 / 0;
    print(x);
  } on FormatException catch (e) {
    print("juan genera una excepción de formato");
  } catch (e) {
    print(e);
  }

  try {
    print(getName(name: 'juan'));
  } on FormatException catch (e) {
    print("juan genera una excepción de formato");
    print(e);
  } catch (e) {
    print("general");
    print(e);
  }
}
