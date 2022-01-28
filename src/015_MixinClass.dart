void main() {
  final garfield = new Cat();
  garfield.walk();

  final donald = new Duck();
  donald.fly();

  final flipper = new Dolphin();
  flipper.swimm();
}

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

abstract class Walker {
  void walk() => print('Estoy caminando...');
}

abstract class Swimmer {
  void swimm() => print('Estoy nadando...');
}

// Tambien se puede usar la palabra mixin
mixin Flyer {
  void fly() => print('Estoy volando..');
}

class Dolphin extends Mammal with Swimmer {}

class Cat extends Mammal with Walker {}

class Bat extends Mammal with Walker, Flyer {}

class Dove extends Bird with Flyer, Walker {}

class Duck extends Bird with Flyer, Walker, Swimmer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer {}
