void main() {
  // Idol cool = new Idol(); 사용가능
  Idol cool = Idol('cool', ['이재훈', '유리', '김성수']);

  // 중간에 변경할 수 있다
  // 이때 이름을 변경하지 못하게 final을 사용한다
  // cool.name = 'koyote';

  print(cool.name);
  print(cool.members);
  cool.sayHello();
  cool.introduce();
  print('-' * 50);

}

// class는 상태값(맴버필드), 기능(맴버메서드)을 가지고 있는 데이터 타입
class Idol {
  // 한번 지정하면 변경하지 못한다. final
  // final String name;
  // final List<String> members;

  // 축약 : final은 자료형을 지정하지 않아도 된다
  final name;
  final members;

  // 위 코드의 축약형
  Idol(this.name, this.members);

  void sayHello() {
    print("안녕하세요 ${name}입니다.");
  }

  void introduce() {
    print("저희 맴버는 ${members}가 있습니다.");
  }
}
