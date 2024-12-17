void main() {
  final String name = 'ICT 인재 개발원';
  print(name);

  // 오류 발생 (final 상수)
  // name = '4강의장';
  const int age = 18;
  print(age);

  // 오류 발생 (const 상수)
  // age = 24;
  print("-" * 30);

  // type 생략가능 (VAR와 동일하다 => 타입 추론)
  final kor = "hong";
  print(kor);
  const eng = "34";
  print(eng);
  print("-" * 30);

  // final : 컴파일 시점에서 초기화 필요 없음
  // const : 컴파일 시점에 초기화 필요, 불변상수 일 때만 사용
  final cTime = DateTime.now();
  print(cTime);

  // const cTime2 = DateTime.now();
  const PI = 3.14;
  print(PI);
}
