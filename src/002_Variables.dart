// Las variables almacenan referencias a datos y son clave para la toma de
// decisiones dentro de una aplicación.
// En Dart las variables tienen que ser declaradas antes de que puedan ser
// utilizadas.
// para el nombramiento de una variable debemos seguir las siguientes reglas:
// •	Debe evitarse el uso de palabras reservadas como new, class, etc…
// •	El nombre debe iniciar con una letra y puede ser alfanumérico,nunca debe
// iniciar con un número
// •	Solo puede usarse los caracteres especiales de guio bajo (_) y moneda ($),
// debe evitarse el uso de espacios en blanco
// El formato de declaración de las variables es:
// tipo_variable nombre_variable = valor_variable;

import 'dart:math';

// late assigment
late String title;

void main() {
  // Explicit Types (num, int, double, bool, String)
  // numbers
  num number;
  int integer;
  double decimal;

  integer = 1;
  decimal = 235.50;

  // El tipo int y el tipo double extienden del tipo number (num)
  number = integer;
  print(number);

  number = decimal;
  print(number);

  print(integer);
  print(decimal);

  // Booleans
  bool trusted, failure;
  trusted = true;
  failure = false;

  print(trusted);
  print(failure);

  // Strings
  String text = 'Hello Peter!!!...';

  print(text);

  // Inferred Types
  var name = 'Joel Chuc';
  var day = DateTime.now().day;
  var isNull = name.isEmpty;

  print(name);
  print(day);
  print(isNull);


  // Get DataType
  var dataType = 'Soy una variable de tipo cadena';
  print('Soy una variable de tipo: ${dataType.runtimeType}');

  // dynamic
  dynamic anyValue = 'hello';
  print(anyValue);
  print('Soy una variable de tipo: ${anyValue.runtimeType}');
  anyValue = DateTime.now().day;
  print(anyValue);
  print('Soy una variable de tipo: ${anyValue.runtimeType}');
  anyValue = 3.1416;
  print(anyValue);
  print('Soy una variable de tipo: ${anyValue.runtimeType}');

  // Constantes
  // Cuando el objetivo de una variable es almacenar un valor que nunca sufrira
  // cambios y este valor se puede definir en tiempo de compilación, pdemos
  // declararla mediante el modificador const
  const double pi = 3.14159;
  const String sayHello = 'Hello Nurse :P...';

  print(pi);
  print(sayHello);

  // Final
  // Cuando el valor permanece constante, pero se desconoce al momento de la compilación
  // se debe usar el modificador final, poque una vez que se establece el valor este nunca cambiará
  final String someDate = DateTime.now().toString();
  // para poder utilizar la clase Random es necessario incluir el paquete dart:math
  final int loter = Random().nextInt(100);

  print(someDate);
  print(loter);

  // Late variables
  title = 'Miss';
  print(title);

  // null safety
  // A partir de la versión 2.12.0 para poder indicar que una variable puede aceptar
  // el valor nulo se debe especificar de manera explícita al momento de declarar el
  // tipo de la variable
  // ? declaration
  int? numberOfStudent;
  String? newText;

  print(numberOfStudent);
  print(newText);

  numberOfStudent = 24;
  newText = 'Hello World...';
  print(numberOfStudent);
  print(newText);
}
