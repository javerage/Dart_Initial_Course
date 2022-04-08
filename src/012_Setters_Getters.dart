void main() {
  var apple = new Fruit();
  apple.name = 'Apple';
  apple.color = 'red';
  apple.weight = .5;

  print(apple);
}

class Fruit {
  // Para que una variable o propiedad sea privada en dart, esta debe ir
  // precedida por un guión bajo
  late String _name;
  late String _color;
  late double _weight;

  // setter
  set name(String name) => this._name = name;
  set color(String color) => this._color = color;
  set weight(double weight) =>
      weight > 0 ? this._weight = weight : this.weight = 0.0;

  // Getter
  String get name => _name;
  String get color => _color;
  double get weight => _weight;

  @override
  String toString() =>
      'The ${_name} is the ${_color} color and wight ${_weight}.';
}
