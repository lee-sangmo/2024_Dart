void main() {
  Employee hong = Employee('홍길동');
  Employee park = Employee('박지성');
  hong.prn01();
  park.prn01();
  print('-' * 50);

  // 클래스 이름으로 접근 => static 변수 이므로
  Employee.building = '거구장';
  hong.prn01();
  park.prn01();
  print('-' * 50);

  Employee.prn02();
}

class Employee {
  // static 은 instance 에 속하지 않고 class 에 속한다
  // 객체 생성과 상관없이 class에 접근할 수 있다
  static String? building;
  final String name;

  // 생성자
  Employee(this.name);
  // building은 생성자가 없어도 사용 가능

  void prn01() {
    print('제 이름은 ${name} 입니다. ${building}에 근무하고 있습니다');
  }

  static void prn02() {
    print('저는 ${building}에서 근무하고 있습니다');
  }
}
