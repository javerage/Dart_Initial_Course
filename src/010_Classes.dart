void main() {
  // para crear una nueva instancia la palabra new es opcional
  final student1 = new Student('Fabian', 5, 8);
  print(student1);

  final student2 = Student('Esmeralda', 8, 10);
  print(student2);  
}

// structure
// Fields
// Accessors
// Constructors
// Methods
class Student {
  String name;
  int grade;
  int score;

  Student(this.name, this.grade, this.score);

  String toString() =>
      'La calificación de ${this.name} para el ${this.grade} cuatrimestre es ${this.score}.';
}
