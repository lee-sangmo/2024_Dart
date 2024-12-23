void main() {
  Idol cool = Idol();
  print(cool.name);
  print(cool.members);
  cool.sayHello();
  cool.introduce();
  print('-' * 50);

  Idol koyote = Idol();
  print(koyote.name);
  print(koyote.members);
  koyote.sayHello();
  koyote.introduce();
  print('-' * 50);
}

// class는 상태값(맴버필드), 기능(맴버메서드)을 가지고 있는 데이터 타입
class Idol {
  String name = "쿨";
  List<String> members = ["이재훈", "유리", "김성수"];

  void sayHello() {
    print("안녕하세요 쿨에 ${name}입니다.");
  }

  void introduce() {
    print("저희 맴버는 이재훈, 유리, 김성수가 있습니다.");
  }
}
