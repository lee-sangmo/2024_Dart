void main() {
  // 비교 연산자 : ==, !=, >, <, >=, <=
  int num1 = 1;
  int num2 = 2;
  print(num1 > num2);
  print(num1 < num2);
  print(num1 >= num2);
  print(num1 <= num2);
  print(num1 == num2);
  print(num1 != num2);
  print('-' * 30);

  // 논리 연산자 : &&, ||, !
  bool res1 = num2 > num1 && num1 != num2;
  print(res1);

  res1 = num2 > num1 && num1 == num2;
  print(res1);

  res1 = num2 < num2 || num1 != num2;
  print(res1);

  res1 = num2 > num1 || num1 == num2;
  print(res1);

  res1 = !(num2 > num1);
  print(res1);
}
