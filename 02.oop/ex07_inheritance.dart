void main() {
  print('-' * 23 + '쿨' + '-' * 23);
  Idol cool = Idol('쿨', 3);
  cool.sayHello();
  cool.introduce();

  print('-' * 23 + 'BTS' + '-' * 23);
  BoyGroup bts = BoyGroup('BTS', 7);
  // Idol bts = BoyGroup('BTS', 7);  // 부모 클래스 생성자를 호출하면 자식 클래스 생성자를 호출할 수 없다
  bts.sayHello(); // 부모 클래스
  bts.introduce(); // 부모 클래스
  bts.sayMale(); // 본인 클래스

  print('-' * 23 + 'Apink' + '-' * 23);
  GirlGroup apink = GirlGroup('Apink', 6);
  apink.sayHello(); // 부모 클래스
  apink.introduce(); // 부모 클래스
  apink.sayFemale(); // 본인 클래스
}

// 상속 : 부모 클래스의 모든 속성을 자식 클래스가 사용할 수 있다
class Idol {
  String name;
  int memberCount;

  // 위 코드의 축약형
  Idol(this.name, this.memberCount);

  // 부모 클래스의 메서드
  void sayHello() {
    print("안녕하세요 저희는 ${name}입니다.");
  }

  // 부모 클래스의 메서드
  void introduce() {
    print("저희 ${name}은 ${memberCount}명의 맴버가 있습니다.");
  }
}

// 자식 클래스는 부모 클래스의 생성자를 준수해야 한다
class BoyGroup extends Idol {
  BoyGroup(String n, int m) : super(n, m); // 부모 클래스의 생성자를 호출
  void sayMale() {
    print("저희는 남자 아이돌입니다.");
  }
}
// 자식 클래스는 부모 클래스의 생성자를 준수해야 한다
class GirlGroup extends Idol {
  GirlGroup(String n, int m) : super(n, m);
  void sayFemale() {
    print("저희는 여자 아이돌입니다.");
  }
}
