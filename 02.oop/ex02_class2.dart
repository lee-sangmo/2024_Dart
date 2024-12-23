void main() {
  // Idol cool = new Idol(); 사용가능
  Idol cool = Idol('cool', ['이재훈', '유리', '김성수']);
  print(cool.name);
  print(cool.members);
  cool.sayHello();
  cool.introduce();
  print('-' * 50);

  Idol koyote = Idol('koyote', ['김종민', '신지 ', '빽가']);
  print(koyote.name);
  print(koyote.members);
  koyote.sayHello();
  koyote.introduce();
  print('-' * 50);
}

// class는 상태값(맴버필드), 기능(맴버메서드)을 가지고 있는 데이터 타입
class Idol {
  String name;
  List<String> members;

  // 생성자 등장
  // Idol(String name, List<String> members)
  //     : this.name = name,
  //       this.members = members;

  // 위 코드의 축약형
  Idol(this.name, this.members);

  void sayHello() {
    print("안녕하세요 ${name}입니다.");
  }

  void introduce() {
    print("저희 맴버는 ${members}가 있습니다.");
  }
}
