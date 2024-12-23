void main() {
  // Idol cool = new Idol(); 사용가능
  Idol cool = const Idol('cool', ['이재훈', '유리', '김성수']);

  print(cool.name);
  print(cool.members);
  cool.sayHello();
  cool.introduce();
  print('-' * 50);

  Idol cool2 = const Idol('cool', ['이재훈', '유리', '김성수']);

  // const 생성자를 사용하면 동일한 값으로 생성된 인스턴스는 같은 메모리를 공유한다
  // 동일한 주소를 사용 = 같다
  // 즉, 같은 값을 가진 인스턴스는 매번 새로 생성되지 않고 기존 인스턴스를 재사용한다
  // cool과 cool2는 완전히 동일한 값을 가지고 있어야 한다 (주의!!)
  print('같냐 ? ${cool == cool2}'); // true가 출력됨

  // const가 아니면 다른 메모리를 참조한다
  // print('같냐 ? ${cool == cool2}'); // false가 출력됨
}

// class는 상태값(맴버필드), 기능(맴버메서드)을 가지고 있는 데이터 타입
class Idol {
  final name;
  final members;

  // 위 코드의 축약형
  const Idol(this.name, this.members);

  void sayHello() {
    print("안녕하세요 ${name}입니다.");
  }

  void introduce() {
    print("저희 맴버는 ${members}가 있습니다.");
  }
}
