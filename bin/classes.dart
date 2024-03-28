void main() {

  Basic thing = Basic(7);
  thing.doStuff();

  Basic.helper();

  var rect = Rectangle(10, 20);
  print(rect.area);

  const cir = Circle(radius: 50, name: 'foo');
  print(cir);

  var p1 = Point.fromMap({'lat': 23, 'lng': 50});
  var p2 = Point.fromList([23, 50]);

  print(p1);
  print(p2);

  // Note dart will print classes/objects are instance of, you'll need to define toString or similar to print more useful data

  var james = Spy('James');
  print(james.sayGreeting()); // Works everywhere
  print(james._revealCodename()); // Works only in this file

  var buck = Dog();
  buck.noise();
}

class Basic {

  int id;

  Basic(this.id);

  doStuff() {
    print('Hello, my ID is $id');
  }

  static helper() {
    print('Oh hey, look at my static powers');
  }
}

class Rectangle {
  final int width;
  final int height;
  late final int area;
  String? name;

  Rectangle(this.width, this.height, [this.name]) {
    area = width * height;
  }

}

class Circle {

  const Circle({ required int radius, String? name });

}

class Point {
  double lat = 0;
  double lng = 0;

  Point.fromMap(Map data) {
    lat = data['lat'].toDouble();
    lng = data['lng'].toDouble();
  }

  Point.fromList(List data) {
    lat = data[0].toDouble();
    lng = data[1].toDouble();
  }
}

class Spy {
  final String name;
  final String _codename = "Super Spy";

  Spy(this.name);

  sayGreeting() => 'My name is $name';
  _revealCodename() => 'My code name is $_codename';
}

abstract class Animal {

  void noise() {
    print('Noise:');
  }

}

class Dog extends Animal {

  String breed = 'Labrador';

  @override
  void noise() {
    // can use super to use original method
    print('Woof!');
  }
}
