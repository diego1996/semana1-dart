void main(List<String> args) {
  int ageInt = 23;
  num ageNum = 23;
  double ageDouble = 23.0;

  print(ageInt);
  print(ageNum);

  ageNum = ageInt;
  print(ageNum);

  ageNum = ageDouble;
  print(ageNum);

  var text1 = 'valor con comilla simple';
  print(text1);
  var text2 = "valor con comilla doble";
  print(text2);

  var text3 = "It's ease to scape the string delimiter";
  print(text3);
  var text4 = 'It\'s ease to scape the string delimiter';
  print(text4);

  var text5 = "el resultado de sumar 3+3 es ${3 + 3}"; // interpolacion
  print(text5);
  var text8 = "texto a interpolar";
  var number = 50;
  var text9 = "Vamos a interporal text8 \'$text8\'. "
      " El valor de la variable number es ${number}";
  print(text9);

  var text6 = "este valor se une con el siguiente valor" + ", yo me uno";
  print(text6);

  var text7 = "me uno con " ', este otro valor'; // concatenacion
  print(text7);

  var text10 = '''CREATE TABLE Person (
                    PersonID int,
                  );''';

  print(text10);

  var text11 = r'mostrar este caracter \';
  print(text11);

  var text12 = '';
  if (text12.isEmpty) {
    print('es vacio');
  }

  var boolVariable = null;
  if (boolVariable == null) {
    print("es null");
  }

  var list1 = ['mazda', 'kia', 'renault'];
  List<String> list2 = ['mazda', 'kia', 'renault'];
  print(list1);
  print(list2);
  print(list2.first);
  print(list2.last);
  print(list2.reversed);

  var list3 = ['chevrolet', ...list1];
  print(list3);
  list3.add("bwm");
  print(list3);
  var list4 = list1;
  var list5 = [list3, list4];
  var list6 = [...list3, ...list4];
  print(list5);
  print(list6);

  var list7;
  List<String>? list8 = null;
  var list9 = [...list3, ...?list7, ...?list8];
  print(list9);

  var listSet = {'mazda', 'kia', 'renault', 'kia'};
  listSet.add('mazda');
  print(listSet);

  var list10 = ["string", true, 1];
  print(list10);

  List<dynamic> list11 = ["string", true, 1];
  print(list11);

  var map1 = {'key1': 'value1', 'key2': false};
  print(map1);
  map1.clear();
  print(map1);
  map1['newkey'] = 'new_value';
  map1['newkey2'] = 'new_value2';
  print(map1);

  map1.forEach((key, value) => print(key));
  map1.forEach((key, value) {
    print(key);
    print(value);
  });
}
