void main() {
  Map<String, String> harry = {
    'Harry Potter': '해리포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저'
  };

  final result =
      harry.map((key, value) => MapEntry('ENG: $key', 'KOR: $value'));
  print(result);

  final result2 = harry.keys.map((x) => x).toList();
  final result3 = harry.values.map((x) => '해리포터의 $x 입니다').toList();
  print(result2);
  print('-' * 50);
  print(result3);
  print('-' * 50);
}
