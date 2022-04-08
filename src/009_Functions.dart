// paquete que nos va a permitir leer de teclado en la consola
import 'dart:io';

// las funciones son bloques de código que trabajan de manera independiente para
// realizar una tarea especifica
// las funciones tienen la siguiente estructura
// tipo_retorno nombre_funcion(_parametros){ cuerpo_funcion; }
void main() {
  // call classical declaration
  sayClassicalHello();

  // call classical declaration with positional parameters
  sayHelloParameters('Joel');

  // call Optional positional parameters
  SayHelloHero('Mary Jane');
  SayHelloHero('Louis Lane', 'Superman');

  // call Named parameters
  Plus(number2: 3, number1: 4);

  // call requiered named parameter
  sayHelloCountry(name: 'Peter', country: 'Jungle');
  sayHelloCountry(country: 'Jungle', name: 'Peter');

  // call default value
  sayHelloCake(fruit: 'apple', name: 'María');

  // call lambda function
  hello();

  // anonimus function
  List<String> fruits = [
    'apple',
    'watermelon',
    'strawberries',
    'orange',
    'bananas',
    'pineapple'
  ];

  fruits.forEach((fruit) {
    print('How many $fruit should I buy?');
    String? unit = stdin.readLineSync();
    if (unit != null)
      print('I bought $unit $fruit for 20 pesos...');
    else
      print("Don't sell $fruit in the cornershop...");
  });

  var down = fruits.reversed;
  down.forEach((element) => print('Test $element'));
}

// Classical Declaration
void sayClassicalHello() {
  print('Hello classical nuse :P...');
}

// Classical Declaration with argument
void sayHelloParameters(String name) {
  print("Hi ${name}, it's a classical Hello nurse :P...");
}

// optional parameter
void SayHelloHero(String name, [String? hero]) => print(
    "Hi ${hero ?? 'SpiderMan'}, my name is ${name}, i'm your biggest fan.");

// Parameter function
void sayHello(String name) => print('Hello $name :P...');

// Required named parameter
void sayHelloCountry({required String name, required String country}) =>
    print('Hi ${name}, Welcome to the ${country}');

// name parameter
void Plus({int number1 = 0, int number2 = 0}) =>
    print('${number1} + ${number2} = ${number1 + number2}');

// Default Value parameter
void sayHelloCake({String name = '', String fruit = ''}) =>
    print('Hi ${name}, do you want a ${fruit} Cake?');

// Simple function
void hello() => print('Hello Nurse :P...');
