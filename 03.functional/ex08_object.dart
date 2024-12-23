void main() {
  final List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '지수', 'group': '블랙핑크'},
    {'name': '정국', 'group': 'BTS'},
    {'name': '슈가', 'group': 'BTS'},
  ];
  print(people);

  // ! 의미는 무조건 key가 name, group 이 존재한다고 가정한다
  final parsePeople =
      people.map((x) => Person(name: x['name']!, group: x['group']!)).toList();
  print(parsePeople);
  print('-' * 30);

  // 이름만 추출 (for)
  for (var k in parsePeople) {
    print('name : ${k.name}');
  }
  print('-' * 30);
  // 이름만 추출 (map)
  final bts1 = parsePeople.map((x) => x.name);
  print('bts1 : ${bts1}');
  print('-' * 30);

  // BTS 그룹만 추출 (where)
  final bts = parsePeople.where((x) => x.group == 'BTS').toList();
  print('BTS ${bts}');

  // BTS 그룹 이면서 (where), 이름 추출 (map)
  final btsName =
      parsePeople.where((x) => x.group == 'BTS').map((x) => x.name).toList();
  print('BTS 이름 : ${btsName}');
}

class Person {
  final String name;
  final String group;

  Person({required this.name, required this.group});

  // 모든 클래스는 object를 상속받는다
  @override
  String toString() {
    return 'name : ${name}, group: ${group}';
  }
}
