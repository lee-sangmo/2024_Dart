void main() {
  // 함수 호출
  addNumbers();
  
  addNumbers2(10, 30);

  // 반환형이 int 이기 때문에 int result 변수에 담고, 출력해야 함
  int result = addNumbers3(20, 30);
  print('result : ${result}');
}

// 함수 정의
addNumbers() {
  print('addNumbers 실행');
}

// 오버라이드 안됨
// 반환형 void 생략
addNumbers2(int k1, int k2) {
  print("total : ${k1 + k2}");
}

// 반환형 int
int addNumbers3(int k1, int k2) {
  return k1 + k2;
}
