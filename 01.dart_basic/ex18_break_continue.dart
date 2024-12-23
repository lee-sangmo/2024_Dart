void main() {
  // break : 반복문을 빠져나오는 역할
  // continue : 반복문의 처음으로 돌아가는 역할
  for (var i = 1; i < 10; i++) {
    print('i : ${i}');
  }
  print('-' * 30);

  // i = 5 일때 break (4까지 출력)
  for (var i = 1; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print('i : ${i}');
  }
  print('-' * 30);
  // i = 5 일때 continue (5 제외하고 출력)
  for (var i = 1; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print('i : ${i}');
  }
  print('-' * 30);
  // continue 사용해서 1 ~ 10 까지 짝수만 출력
  for (var i = 1; i < 11; i++) {
    if (i % 2 == 1) {
      continue;
    }
    print('i : ${i}');
  }
  print('-' * 30);
}
