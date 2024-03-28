void main() {

  String color = 'blue';

  if (color == 'blue') {
    //
  } else if (color == 'red') {
    //
  } else {
    // default
  }

  if (color == 'red') print('Color is red');

  String thing1 = '';

  if (thing1.isEmpty);

  String? thing2;

  if (thing2 != null) print('Not null');

  for (var i = 0; i < 5; i++) {
    print(i);
  }

  i = 0;
  do {
    print(i);
  } while (i < 5);

  // assert only raises in errors in debug mode
  var txt = 'good';
  assert(txt != 'bad');
}