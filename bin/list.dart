void main() {
  List<int> list = [1, 2, 3, 4, 5];

  list[0];

  list.sublist(2, 5);

  var list2 = List.filled(50, 'hello');

  list2.length;
  list2.first;
  list2.last;

  list.add(4); // push
  list.removeLast(); // pop
  list.insert(1, 1000);

  for (int n in list) {
    print(n);
  }

  list2.forEach((n) => print(n));

  var doubled = list.map((n) => n * 2);

  var combined = [...list, ...doubled];

  combined.forEach(print);

  bool depressed = false;
  var cart = [
    'milk',
    'eggs',
    if (depressed) 'Vodka'
  ];
}