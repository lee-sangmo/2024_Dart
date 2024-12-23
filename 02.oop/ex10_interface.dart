// ignore_for_file: unnecessary_type_check

void main() {
  BoyGroup bts = BoyGroup('BTS');
  bts.sayName();

  GirlGroup redVelvet = GirlGroup('레드벨벳');
  redVelvet.sayName();

  print(bts is IdoInterface); // true
  print(bts is GirlGroup); // false
  print(bts is BoyGroup); // true
}

// dart는 interface 사용안함 => abstract class 사용
// dart에서는 추상 클래스가 인터페이스를 대신한다
abstract class IdoInterface {
  String name;
  IdoInterface(this.name);
  // 내용이 없는 메서드 : 추상메서드
  // void sayName() {}
  void sayName();
}

class BoyGroup implements IdoInterface {
  String name;
  BoyGroup(this.name);

  // 부모의 추상 메서드를 반드시 override 해야한다
  @override
  void sayName() {
    print('제 이름은 ${name} 입니다');
  }
}

class GirlGroup implements IdoInterface {
  String name;
  GirlGroup(this.name);

  @override
  void sayName() {
    print('제 이름은 ${name} 입니다');
  }
}
