void main() {
  // nullable - null 이 될 수 있다
  // not-nullable - null 이 될 수 없다
  // null - 아무런 값도 가지지 않는다
  
  // String, int, double, boolean은 null을 허용하지 않는다
  String name = '홍길동';
  print(name);
  
  // name = null;
  
  // 자료형? 을 붙이면 null 허용
  String? addr = '서울';
  print(addr);
  
  addr = null;
  print(addr);  
  
  String? age = "27";
  age = "18";
  age = null;
  // !는 null을 허용하지 않는다는 의미
  // 만약 null 이면 Type error 예외 발생  
  print(age!);
}
