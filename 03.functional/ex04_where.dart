void main() {
  List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '슈가', 'group': 'BTS'},
    {'name': '지수', 'group': '블랙핑크'},
    {'name': '정국', 'group': 'BTS'}
  ];

  // where : filter와 비슷, 조건을 만족하는 요소만 반환
  final result = people.where((x) => x['group'] == '블랙핑크').toList(); // 블랙핑크 그룹만 반환, 리스트 []로 변경
  final result2 = people.where((x) => x['group'] == 'BTS').toList(); // BTS 그룹만 반환, 리스트 []로 변경

  print(result);
  print(result2);
}
