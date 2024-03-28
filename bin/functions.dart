void main() {

  takeFive(int number) {
    return '$number minus five equals ${number - 5}';
  }

  takeFive(23);

  namedParams({ required int a, int b = 5 }) {
    return a - b;
  }

  namedParams(b: 23, a: 10);

  takeTen(int number) => '$number minus ten equals ${number - 10}';
  takeTen(23);

  callIt(
    () => 'Mundo goes where he pleases'
  );

  callBack(Function callback) {
    var result = callback();

    return 'Result: $result';
  }
}