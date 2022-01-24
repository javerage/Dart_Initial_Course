void main() {
  int? goalTime;
  String? goalScorer;
  bool goalScored = false;

  if (goalScored) {
    goalTime = 21;
    goalScorer = 'Chicharito';
  }

  /*  if(goalTime != null){
    print(goalScorer.length);
  } */

  // Null-aware methods
  print(goalScorer?.length);

  // Null-Assertion
  if (goalTime != null) {
    print(goalScorer!.length);
  }

  var unicorn;
  assert(unicorn == null);
}