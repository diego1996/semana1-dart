mixin Draw {
  int numDrawings = 0;

  draw() {
    return "Puedo dibujar";
  }
}

mixin Read {
  int? numBooksRead;

  read() {
    return "Puedo leer";
  }
}

mixin Exercise {
  int? numHoursExercise;

  exercise() {
    return "Puedo ejercitarme";
  }
}

mixin Box {
  int numFights = 0;

  box() {
    return "Puedo boxear";
  }
}

abstract class Person {
  String firstName;
  String lastName;
  int age;

  String greet();

  String identify() {
    return "Mi nombre es: $firstName $lastName";
  }

  Person(this.firstName, this.lastName, this.age);
}

class Artist extends Person with Draw {
  int numWorks = 0;
  String? type;
  String? style;

  Artist(String firstName, String lastName, int age)
      : super(firstName, lastName, age);

  @override
  String greet() {
    return "Hola soy artista";
  }

  String showWorks() {
    return "Las obras que he realizado son: $numWorks";
  }
}

class Engineer extends Person with Draw, Read {
  int yearsOfExperience = 0;
  double monthlySalaryUSD;
  String? education;

  Engineer(String firstName, String lastName, int age, this.monthlySalaryUSD)
      : super(firstName, lastName, age);

  @override
  String greet() {
    return "Hola soy ingeniero";
  }

  String experience() {
    return "Años de experiencia: $yearsOfExperience";
  }
}

class Doctor extends Person with Read, Exercise {
  String specialty;
  DateTime dateAdmission;
  int numberOfPatients = 0;

  Doctor(String firstName, String lastName, int age, this.specialty,
      this.dateAdmission)
      : super(firstName, lastName, age);

  @override
  String greet() {
    return "Hola soy doctor";
  }

  bool isBusy() {
    return numberOfPatients > 0;
  }
}

abstract class Athlete extends Person {
  int numberOfVictories = 0;
  double strength;
  double speed;

  Athlete(String firstName, String lastName, int age, this.strength, this.speed)
      : super(firstName, lastName, age);

  String getVictories() {
    return "Numero de victorias: $numberOfVictories";
  }

  participateInATournament();
}

class Boxer extends Athlete with Exercise, Box {
  String category;
  String? nickName;
  bool professional;

  participateInATournament() {
    print("Participar en un torneo como boxeador");
  }

  @override
  String greet() {
    return "Hola soy boxeador";
  }

  bool isProfessionalBoxer() {
    return professional;
  }

  Boxer(String firstName, String lastName, int age, double strength,
      double speed, this.category, this.professional)
      : super(firstName, lastName, age, strength, speed);
}

void main(List<String> args) {
  Artist artist = Artist('Pablo', 'picasso', 42);
  artist.numWorks = 100;
  artist.numDrawings = 50;
  artist.type = "Pintor";
  artist.style = "Cubismo";

  print(artist.greet());
  print(artist.showWorks());
  print("Como artista ${artist.draw()}");
  print("Numero de dibujos realizados: ${artist.numDrawings}");
  print("");

  Engineer engineer = Engineer('Diego', 'Asencio', 24, 2000.0);
  engineer.yearsOfExperience = 4;
  engineer.education = "universitaria";
  engineer.numDrawings = 10;
  engineer.numBooksRead = 44;

  print(engineer.greet());
  print(engineer.experience());
  print("Salario: ${engineer.monthlySalaryUSD}");
  print("Como ingeniero ${engineer.draw()}");
  print("Como ingeniero ${engineer.read()}");
  print("Numero de dibujos realizados: ${engineer.numDrawings}");
  print("Numero de libros leidos: ${engineer.numBooksRead}");
  print("");

  Doctor doctor = Doctor('Pepito', 'Perez', 50, 'Pediatra', DateTime.now());
  doctor.numberOfPatients = 4;
  doctor.numHoursExercise = 10;
  doctor.numBooksRead = 200;

  print(doctor.greet());
  print("¿Esta ocupado?: ${doctor.isBusy() ? 'Si' : 'No'}");
  print("Numero de pacientes: ${doctor.numberOfPatients}");
  print("Especialidad: ${doctor.specialty}");
  print("Fecha de registro: ${doctor.dateAdmission}");
  print("Como doctor ${doctor.read()}");
  print("Como doctor ${doctor.exercise()}");
  print("Numero de horas de ejercicio por semana: ${doctor.numHoursExercise}");
  print("Numero de libros leidos: ${doctor.numBooksRead}");
  print("");

  Boxer boxer = Boxer('Pepito', 'Perez', 46, 40.5, 20.0, 'elite', true);
  boxer.numberOfVictories = 100;
  boxer.nickName = "Booker T";
  boxer.numHoursExercise = 300;
  boxer.numFights = 90;

  print(boxer.greet());
  print(
      "¿Es boxeador profesional?: ${boxer.isProfessionalBoxer() ? 'Si' : 'No'}");
  boxer.participateInATournament();
  print(boxer.getVictories());
  print("Fuerza: ${boxer.strength}");
  print("Velocidad: ${boxer.speed}");
  print("Apodo: ${boxer.nickName}");
  print("Categoria: ${boxer.category}");
  print("Como boxeador ${boxer.exercise()}");
  print("Como boxeador ${boxer.box()}");
  print("Numero de horas de ejercicio por semana: ${boxer.numHoursExercise}");
  print("Numero de peleas: ${boxer.numFights}");
  print("");
}
