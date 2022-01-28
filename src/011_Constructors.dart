import 'dart:convert';

void main() {
  final student1 = new Student('Ángel', 5, 8);
  print(student1);

  final String rawJson = '{"name":"Carlos", "grade": 5, "score": 10}';
  Map parsedJson = json.decode(rawJson);

  final student2 = new Student.fromJson(parsedJson);
  print(student2);

  // cascade notation
  final student3 = new Student.anonymous()
  ..grade = 5
  ..name = 'Erika'
  ..score = 9;
  print(student3);
}

class Student {
  late String name;
  late int grade;
  late int score;

  Student(this.name, this.grade, this.score);

  // Named constructor
  Student.fromJson(Map parsedJson) {
    this.name = parsedJson['name'];
    this.grade = parsedJson['grade'];
    this.score = parsedJson['score'];
  }

  Student.anonymous();

  String toString() =>
      'La calificación de ${this.name} para el ${this.grade} cuatrimestre es ${this.score}.';
}
