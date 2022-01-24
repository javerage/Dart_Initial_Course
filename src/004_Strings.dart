void main() {
  var stringOne = 'Hello';
  var stringTwo = 'Nurse...';

  // Concat string
  var concatString = stringOne + stringTwo;
  print(concatString);
  
  // multiply string
  var multiString = concatString * 3;
  print(multiString);

  // Interpolation
  String someString = "With great power comes great responsibility";
  print("The string is: $someString");

  // Imprime La cadena: With great power comes great responsibility
  // Usamos corchetes para indicar que vamos a invocar un método de la variable...
  // Imprime la longitud de la cadena: 43
  print("The string length is: ${someString.length}");

  // Imprime La cadena: With great power comes great responsibility.length
  // Omitir los corchetes significá que solo se evalua la variable,
  // no el método en la variable.
  // Se requerían corchetes :'(
  print("The string length is: $someString.length");  
}