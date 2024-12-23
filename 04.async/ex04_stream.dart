import 'dart:async';

void main() {
  // stream은 비동기 데이터가 들어 올 때 처리하기에 적합하며,
  // Dart 에서 비동기 프로그래밍으로 자주 사용된다
  final controller = StreamController();
  final stream = controller.stream;

// listen : 값이 들어오면 (이벤트 발생하면) 실행한다
  final streamListener = stream.listen((val) {
    print('Listener : ${val}');
  });

// stream에 값을 추가 -> streamListener1 에게 전달된다
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
