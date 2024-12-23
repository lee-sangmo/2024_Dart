void main() {
  addNumbers(math: 80, kor: 90, eng: 70);
  print('-' * 30);

  addNumbers2(kor: 90, eng: 70);
  print('-' * 30);
  addNumbers2(kor: 95, eng: 75, math: 85);
  print('-' * 30);
}

// named parameter : 파라미터 이름을 지정해서 사용할 수 있는 파라미터 (순서가 중요하지 않음)
addNumbers({required int kor, required int eng, required int math}) {
  int sum = kor + eng + math;
  print('kor = ${kor}');
  print('eng = ${eng}');
  print('math = ${math}');
  print('sum = ${sum}');
}

addNumbers2({required int kor, required int eng, int math = 70}) {
  int sum = kor + eng + math;
  print('kor = ${kor}');
  print('eng = ${eng}');
  print('math = ${math}');
  print('sum = ${sum}');
}