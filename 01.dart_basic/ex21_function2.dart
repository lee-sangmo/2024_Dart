void main() {
  showNumber(10, 20, 30);
  print('-' * 30);

  showNumber2(1000);
  print('-' * 30);

  showNumber2(1, 2);
  print('-' * 30);

  showNumber3(100);
  print('-' * 30);

  showNumber3(100, 1000);
  print('-' * 30);

  showNumber3(100, 1000, 10000);
  print('-' * 30);
}

showNumber(int x, int y, int z) {
  print('x = ${x}');
  print('y = ${y}');
  print('z = ${z}');
}

// optional parameter : 있어도 되고 없어도 되는 파라미터
// 이 때 [int? y, int? z] 에 null 허용으로 없어도 되는 파라미터
showNumber2(int x, [int? y, int? z]) {
  print('x = ${x}');
  print('y = ${y}');
  print('z = ${z}');
}

// 이 때 sum 때문에 오류 발생
// [int! y, int! z] 는 사용할 수 없다(optional parameter 이기 때문)
// 값이 들어오면 들어온 값을 사용하고, 값이 안들어오면 초기값을 사용한다
showNumber3(int x, [int y = 5, int z = 50]) {
  int sum = x + y + z;
  print('x = ${x}');
  print('y = ${y}');
  print('z = ${z}');
  print('sum = ${sum}');
}
