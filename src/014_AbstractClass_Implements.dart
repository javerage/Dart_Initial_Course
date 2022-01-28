void main() {
  var triangle = new Triangle(sideA: 4.0, sideB: 7.0, sideC: 6.0);
  print(triangle);
}

abstract class GeometricShape {
  String get name;
}

abstract class Polygon implements GeometricShape {
  int get sides;
  double get perimetro;
}

class Triangle implements Polygon {
  late int _numberSides;
  late String _name;
  late double _sideA;
  late double _sideB;
  late double _sideC;

  Triangle({required double sideA, required double sideB, required double sideC, String name=''}) {
    this._numberSides = 3;
    this._name = name;
    this._sideA = sideA;
    this._sideB = sideB;
    this._sideC = sideC;
  }

  set name(String value) => this._name = value;
  String get name => this._name.isEmpty ? 'triangle' : _name;

  int get sides => _numberSides;

  double get perimetro => this._sideA + this._sideB + this._sideC;

  @override
  String toString()  => 'La figura es un ${name} por lo cual tiene ${sides} lados y su perímetro es: ${perimetro} cm.';
}