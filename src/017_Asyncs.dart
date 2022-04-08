void main() async {
  String studentName = await getLastStudent();
  print(studentName);
}

Future<String> getLastStudent() {
  List<String> students = [
    'Mario',
    'Karina',
    'Hortensia',
    'Julio',
    'María',
    'Edgar'
  ];
  return Future.delayed(
    Duration(seconds: 5),
    () => students.last,
  );
}
