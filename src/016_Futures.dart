void main() {
  print('Previus call: ${DateTime.now()}');
  save('server:locahost;usr:sa;pass:12345')
      .then((value) => print('New RowId: $value'));
  print('End call: ${DateTime.now()}');
}

Future<int> save(String dbConnection) {
  return Future.delayed(Duration(seconds: 3), () => 293);
}
