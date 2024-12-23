void main() {
  // future : 미래에 받아올 값을 저장할 수 있다
  //          (모든 타입들을 future 변경 가능)
  //          async(비동기) 프로그래밍이 가능해진다.

  Future<String> name = Future.value('한국ICT');
  Future<int> age = Future.value(24);
  Future<bool> isTrue = Future.value(true);

// 1번 파라미터는 지연시간, 2번 파라미터는 지연시간 이후 실행 할 함수
  // Future.delayed(Duration(seconds: 2), () {
  //   print('Delayed 2 seconds');
  // });

  addNumbers(1, 1);
  addNumbers(2, 2);
  addNumbers(3, 3);
}

void addNumbers(int number1, int number2) {
  print('계산 요청 : ${number1} + ${number2}');

  // 원래는 서버에 요청하고 기다린다
  Future.delayed(Duration(seconds: 2), () {
    print('서버가 계산 중 : ${number1} + ${number2}');
  });
  print('결과 받기 : ${number1 + number2}');
}
