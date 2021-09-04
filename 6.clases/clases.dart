class Person {
  String name;
  String last_name;
  int age;

  Person(this.name, this.last_name, this.age); // constructor

  Person.complet(
      {this.name = 'jesus', this.last_name = 'asencio', this.age = 42});
}

class Father extends Person {
  int sons;

  Father({required this.sons}) : super.complet();
}

abstract class Vehicle {
  String? plate;

  bool turnOn();
}

mixin Land {
  int? tires;
  int? mileage;
  vehicleType() {
    return "Terrestre";
  }
}

mixin Water {
  String? motor;
  vehicleType() {
    return "Acuatico";
  }
}

class Cab extends Vehicle with Land {
  String? plate = 'abc123';
  bool turnOn() => true;
}

class Boat extends Vehicle with Water {
  String? plate = 'xyz';
  bool turnOn() => false;
}

class Employee implements Person {
  @override
  int age;

  @override
  String last_name;

  @override
  String name;

  Employee(this.name, this.last_name, this.age);
}

void main(List<String> args) {
  var person = Person('diego', 'asencio', 24);
  print(person.name);
  print(person.last_name);
  print(person.age);
  var father = Father(sons: 3);
  print(father.name);
  print(father.last_name);
  print(father.age);
  print(father.sons);

  var vehicleCab = Cab();
  vehicleCab.tires = 4;
  vehicleCab.mileage = 300;
  print(vehicleCab.plate);
  print(vehicleCab.tires);
  print(vehicleCab.mileage);
  print(vehicleCab.turnOn());
  print(vehicleCab.vehicleType());

  var vehicleBoat = Boat();
  vehicleBoat.motor = "ford";
  print(vehicleBoat.plate);
  print(vehicleBoat.motor);
  print(vehicleBoat.turnOn());
  print(vehicleBoat.vehicleType());
}
