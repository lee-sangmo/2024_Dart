import 'dart:async';

void main() {
  final controller = StreamController();
  // listener가 하나 일 때
  // final stream = controller.stream;

  // listener가 여러개 일 때 asBroadcastStream 사용
  final stream = controller.stream.asBroadcastStream();

  final streamListener1 = stream.listen((val) {
    print('Listener1 : ${val}');
  });

  final streamListener2 = stream.listen((val) {
    print('Listener2 : ${val}');
  });

  // stream에 값을 추가 -> streamListener1 에게 전달된다
  // sink.add : stream에 값을 추가하는 역할
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
