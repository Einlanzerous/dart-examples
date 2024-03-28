void main() {
  // normal operators mostly

  String? name;
  name ??= 'Guest'; // assign if null, otherwise keep current value
  var z = name ?? 'Guest';

  // Normal ternary operators
  String color = 'blue';
  var isThisBlue = color == 'blue' ? 'Yup, blue it is' : 'Nope, not blue';

  // Cascade, example of not using it, then using it
  dynamic Paint;

  var paint = Paint();
  paint.color = 'red';
  paint.strokeCap = 'round';
  paint.strokeWidth = 5.0;

  var paint2 = Paint()
    ..color = 'black'
    ..strokeCap = 'round'
    ..strokeWidth = 5.0;
}