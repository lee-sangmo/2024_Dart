void main() {
  Operation op = add;
  int result = op(10, 20, 30);
  print('result = ${result}');
  print('-' * 30);

  op = sub;
  result = op(10, 20, 30);
  print('result2 = ${result}');
  print('-' * 30);

  int result3 = calculator(10, 20, 30, add);
  print('result3 = ${result3}');
  print('-' * 30);
  
  int result4 = calculator(10, 20, 30, sub);
  print('result4 = ${result4}');
  print('-' * 30);
}

// signature : 함수의 이름과 매개변수의 타입과 개수
// 반환타입과 파라미터 타입이 모두 같아야 한다 (주의)
typedef Operation = int Function(int x, int y, int z);
int add(int x, int y, int z) => x + y + z;
int sub(int x, int y, int z) => x - y - z;
int mul(int x, int y, int z) => x * y * z;
int div(int x, int y, int z) => x ~/ y ~/ z;

// 계산기 함수
// Operation : callback 함수, signature 함수 역할
int calculator(int x, int y, int z, Operation op) {
  return op(x, y, z);
}
