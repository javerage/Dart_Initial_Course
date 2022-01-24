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
  for(var index = 1; index <= 20; index++){
    if((index % 2) == 0)
      print('the number $index is pair');
  }
}