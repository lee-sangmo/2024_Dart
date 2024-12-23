void main() {
  // Idol cool = new Idol(); 사용가능
  Idol cool = Idol('cool', ['이재훈', '유리', '김성수']);

  print(cool.name);
  print(cool.members);
  cool.sayHello();
  cool.introduce();
  print('-' * 50);

  cool.addMember = '로제';
  print(cool.members);
}

// class는 상태값(맴버필드), 기능(맴버메서드)을 가지고 있는 데이터 타입
class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);

  void sayHello() {
    print("안녕하세요 ${name}입니다.");
  }

  void introduce() {
    print("저희 맴버는 ${members}가 있습니다.");
  }

  // getter
  // 첫번째 맴버를 리턴하자
  String get firstMember {
    return this.members[0];
  }

  // setter
  // 맴버를 추가하자 (void를 삭제해도 된다)
  void set addMember(String name) {
    // 교체
    // this.members[0] = name;

    // 추가
    this.members.add(name);
  }
}
