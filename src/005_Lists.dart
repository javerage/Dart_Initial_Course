void main() {
  // List data type
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers);

  List<String> students = ['Juan', 'Pedro', 'Pablo', 'Rosa', 'María'];
  print(students);

  // List dynamic type
  List anyValues = [1, 3];
  print(anyValues);

  // Add item specific type
  numbers.add(6);
  print(numbers);

  // Add item dynamic type
  anyValues.add('Hola');
  anyValues.add(true);
  print(anyValues);

  // finity list
  List<int> finityNumbers = List.filled(3, 100);

  // Causaria un error
  //finityNumbers.add(4);

  print(finityNumbers);

  // Mediante [indice] podemos accede a un elemento especifico de uan lista
  // el indice de la lista inicia en 0
  print(numbers[3]);
  numbers[3] = 20;
  print(numbers[3]);

  // El operador + se puede utilizar para concatenar dos listas devolviendo
  // una nueva lista.
  var otherNumbers = [6, 7, 8, 9, 0];
  var fullNumbers = numbers + otherNumbers;
  print(fullNumbers);
}
