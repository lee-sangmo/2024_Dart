void main() {
  // 1부터 10까지 출력
  for (int i = 0; i < 10; i++) {
    print('i=${i}');
  }
  print('-' * 30);

  List<int> numbers = [1, 2, 3, 4, 5, 6];
  int total = 0;
  for (var i = 0; i < numbers.length; i++) {
    total = total + numbers[i];
  }
  print('total : ${total}');
  print('-' * 30);

  total = 0;
  for (var k in numbers) {
    total += k;
  }
  print('total : ${total}');
  print('-' * 30);

  final result = getKoyote();
  for (var k in result) {
    // map : Key 값을 가져오는 방법
    print('${k["name"]}, ${k["age"]}');
  }
  print('-' * 30);

  final result2 = getKoyote2();
  for (var k in result2) {
    // record 에서 $1은 첫번째 인자, $2는 두번째 인자
    print('${k.$1}, ${k.$2}');
  }
  print('-' * 30);
}

List<Map<String, dynamic>> getKoyote() {
  return [
    {'name': '신지', 'age': 43},
    {'name': '종민', 'age': 45},
    {'name': '빽가', 'age': 43},
  ];
}

List<(String name, int age)> getKoyote2() {
  return [
    ('신지', 3),
    ('종민', 5),
    ('빽가', 3),
  ];
}
