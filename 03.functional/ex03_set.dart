void main() {
  Set blackpink = {'리사', '제니', '지수', '로제'};

  final result1 =
      blackpink.map((x) => '블랙핑크의 ${x} 입니다').toSet(); // 셋 {}을 셋 {}로 변경
  final result2 =
      blackpink.map((x) => '블랙핑크의 ${x} 입니다').toList(); // 셋 {}을 리스트 []로 변경
  final result3 = blackpink
      .map((x) => '블랙핑크의 ${x} 입니다')
      .toList()
      .asMap(); // 리스트 []를 map {}으로 변경

  print(result1);
  print(result2);
  print(result3);
}
