void main() {
  // reduce : 리스트 또는 컬렉션 요소들를 하나의 값으로 축수(누적) 할 때 사용
  // 주의 : 1. 리스트가 비어있으면 reduce 를 사용할 수 없다. 에러 발생
  //       2. 리스트의 요소가 하나만 있을 경우, 그 요소가 그대로 반환된다.
  //       ** 3. reduce를 실행한 객체의 타입이 결과 타입과 같아야 한다.

  List<int> numbers = [1, 3, 5, 7, 9];
  // prev : 이전 연산 결과 값, next : 현재 요소 값
  final result = numbers.reduce((prev, next){
    print('-' * 30);
    print('prev : ${prev}');
    print('next : ${next}');
    print('total : ${prev + next}');
    return prev + next;
  });
  print('result : ${result}');
  print('-' * 30);

  final result2 = numbers.reduce((prev, next) => prev + next);
  print('result2 : ${result2}');
  print('-' * 30);

  List<String> words = ['어서오세요 ', '여기는 ', '롯데월드 입니다'];
  final result3 = words.reduce((prev, next) => prev + next);
  print('result3 : ${result3}');
  print('-' * 30);
}
