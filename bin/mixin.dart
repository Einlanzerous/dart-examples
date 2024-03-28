void main () {
  var paul = SuperHuman();
  paul.benchPress();
  paul.sprint();
}


class Human {}

class SuperHuman extends Human with Strong, Fast {

}

mixin Strong {
  bool doesLift = true;

  void benchPress() {
    print('Gotta get them gains *benchpress*');
  }
}

mixin Fast {
  bool doesRun = true;

  void sprint() {
    print('Gotta go fast!');
  }
}


