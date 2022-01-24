void main() {
  // Create a set
  var animals = {'cat', 'dog', 'bird', 'elephant', 'tiger'};

  // Empty set
  var otherAnimals = <String>{};
  Set<int> numbers = {};

  // add items
  numbers.add(1);
  otherAnimals.add('Fish');
  otherAnimals.addAll(animals);

  // Unique value
  animals.add('cat');

  // get number items
  numbers.add(otherAnimals.length);

  print(animals);
  print(otherAnimals);
  print(numbers);
}