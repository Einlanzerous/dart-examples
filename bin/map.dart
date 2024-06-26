void main() {
  Map<String, dynamic> book = {
    'author': 'George Orwell',
    'title': 'Biography',
    'pages': 3,
    'publisher': 'Stanford University'
  };

  book['title'];
  book['published'] = 1851;

  book.keys;
  book.values;
  book.values.toList();

  for (MapEntry b in book.entries) {
    print('Key ${b.key}, Value ${b.value}');
  }
  
  book.forEach((k, v) => print('Key : $k, Value : $v'));
}