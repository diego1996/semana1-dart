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
}
