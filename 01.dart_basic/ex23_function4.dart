void main() {
  int result = addNumbers(kor: 90, eng: 70, math: 80);
  print('result = ${result}');
  print('-' * 30);

  result = addNumbers(kor: 90, eng: 70);
  print('result = ${result}');
  print('-' * 30);
}

int addNumbers({required int kor, required int eng, int math = 70}) {
  int sum = kor + eng + math;
  print('kor = ${kor}');
  print('eng = ${eng}');
  print('math = ${math}');
  print('sum = ${sum}');
  return sum;
}
