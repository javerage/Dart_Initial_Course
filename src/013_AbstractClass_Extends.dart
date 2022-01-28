void main(){
  var quadrilateral = new Quadrilateral(side: 4.0);
  print(quadrilateral);
}

class Polygon {
  late String _name;
  late int _numberSide;
  late double _perimetro;

  String get name => _name;
  int get side => _numberSide;
  double get perimetro => _perimetro;
}


class Quadrilateral extends Polygon {
  late double _side;

  Quadrilateral({required double side, String name=''}) {
    super._numberSide = 4;
    super._name = name;
    this._side = side;
  }

  set name(String value) => super._name = value;
  String get name => super._name.isEmpty ? 'quadrilateral' : _name;

  int get sides => super._numberSide;

  double get perimetro => super._perimetro = this._side * _numberSide;

  @override
  String toString()  => 'La figura es un ${name} por lo cual tiene ${sides} lados y su perímetro es: ${perimetro} cm.';
}