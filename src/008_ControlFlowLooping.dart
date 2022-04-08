void main() {
  var day = DateTime.now().weekday;
  int lunes = 1;
  int viernes = 5;
  int domingo = 7;

  // if
  if (day == lunes) print('Today is a good day to practice Dart programming.');

  // if/else
  if (day >= lunes && day <= viernes) {
    print('Today is a good day to practice Dart programming.');
  } else if (day == domingo) {
    print('You need install Dart...');
  } else {
    print("you're an expert Dart developer.");
  }

  // Conditional expressions
  // zero conditional
  // var result = condition ? expr1 : expr2;
  var visibility = day == lunes ? 'public' : 'private';
  print(visibility);

  // eval null value | null conditional
  // var result = expr1 ?? expr2;
  String? playerName;
  print(playerName ?? 'Guest');

  // while
  int sabado = 6;
  day = lunes;
  while (day != sabado && day != domingo) {
    print('today is $day; i have a hard work!!!');
    day++;
  }

  // do while
  day = domingo;
  do {
    print('Today is $day; i need rest');
    day--;
  } while (day == sabado || day == domingo);

  // for
  int limite = 20;
  for (var index = 1; index <= limite; index++) {
    if ((index % 2) == 0) print('the number $index is pair');
  }

  // switch
  day = DateTime.now().weekday;
  switch (day) {
    case 1:
      print('today is Monday...');
      break;
    case 2:
      print('today is Tuesday...');
      break;
    case 3:
      print('today is wednesday...');
      break;
    case 4:
      print('today is.thursday..');
      break;
    case 5:
      print('today is friday...');
      break;
    case 6:
      print('today is saturday...');
      break;
    default:
      print('Today is sunday...');
  }
}
