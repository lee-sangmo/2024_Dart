void main() {
  // fold : reduce 와 비슷하지만, 초기값을 명시적으로 설정할 수 있다.
  //        reduce 와 달리 실행한 타입과 결과 타입이 다를 수 있다.

  List<int> numbers = [1, 3, 5, 7, 9];
  final result = numbers.fold(100, (prev, next) {
    print('-' * 30);
    print('prev : ${prev}');
    print('next : ${next}');
    print('total : ${prev + next}');
    return prev + next;
  });
  print('result : ${result}');
  print('-' * 30);

  final result2 = numbers.fold(0, (prev, next) => prev + next);
  print('result2 : ${result2}');
  print('-' * 30);

  List<String> words = ['어서오세요 ', '여기는 ', '롯데월드 입니다.'];
  final result3 = words.fold('만나서 반갑습니다. ', (prev, next) => prev + next);
  print('result3 : ${result3}');
  print('-' * 30);

// 초기값을 제외한 length 결과 산출됨
  final result4 = words.fold(0, (prev, next) => prev + next.length);
  print('result4(초기값 제외) length : ${result4}');
  print('-' * 30);
}
