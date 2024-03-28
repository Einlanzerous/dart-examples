import 'dart:async';

void main() {
  
  var delay = Future.delayed(Duration(seconds: 3));

  delay
    .then((value) => print('I have been waiting'))
    .catchError((error) => print(error));

  print(runInTheFuture());

  var stream = Stream.fromIterable([1, 2, 3, 4, 5]).asBroadcastStream();

  stream.listen((event) => print(event));

  stream 
    .map((event) => event * 2)
    .listen((event) => print(event));

  streamFun();
}

Future<String> runInTheFuture() async {

  var data = await Future.value('world');

  return 'Hello $data';

}

streamFun() async {

  var stream = Stream.fromIterable([8, 9, 11]);

  await for (int value in stream) {
    print(value);
  }

}
