void main() {
  // Idol cool = new Idol(); 사용가능
  Idol cool = Idol('cool', ['이재훈', '유리', '김성수']);
  print(cool.name);
  print(cool.members);
  cool.sayHello();
  cool.introduce();
  print('-' * 50);

  Idol koyote = Idol.fromList([
    'koyote',
    ['김종민', '신지', '빽가']
  ]);
  print(koyote.name);
  print(koyote.members);
  koyote.sayHello();
  koyote.introduce();
  print('-' * 50);

  Idol blackpink = Idol.setList([
    ['제니', '로제', '리사', '지수'],
    '블랙핑크'
  ]);
  print(blackpink.name);
  print(blackpink.members);
  blackpink.sayHello();
  blackpink.introduce();
  print('-' * 50);
}

// class는 상태값(맴버필드), 기능(맴버메서드)을 가지고 있는 데이터 타입
class Idol {
  String name;
  List<String> members;

  // 축약형 생성자
  Idol(this.name, this.members);

  // 이름 있는 생성자
  Idol.fromList(List values)
      : this.name = values[0],
        this.members = values[1];

  Idol.setList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print("안녕하세요 ${name}입니다.");
  }

  void introduce() {
    print("저희 맴버는 ${members}가 있습니다.");
  }
}
