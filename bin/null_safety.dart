void main() {

  int? age;

  print(age == null);

  String? answer;
  String result = answer!;
}

class Animal {
  late final String _size;

  void goBig() {
    _size = 'big';
    print(_size);
  }
}