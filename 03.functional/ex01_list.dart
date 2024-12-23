void main() {
  // 리스트는 중복이 가능하다
  // 리스트를 다른 자료형으로 변경
  List<String> cool = ['이재훈', '유리', '김성수', '유리'];
  print(cool); // 리스트 그대로 출력
  print(cool.asMap()); // 키와 값을 쌍으로 만들어준다
  print(cool.toSet()); // set {}으로 만들어준다, 중복 안됨
  print('-' * 50);

  Map coolMap = cool.asMap();
  print(coolMap); // 키와 값을 쌍으로 만들어준다
  print(coolMap.keys); // key 출력, Iterable 형태 (반복자)
  print(coolMap.values); // value 출력, Iterable 형태는 사용하지 않고 다른 타입으로 변경한다.
  print('-' * 50);

  print(coolMap.values.toList()); // value를 리스트로 변경
  print(coolMap.values.toSet()); // value를 set {}으로 변경, 중복 안됨
  print('-' * 50);

  // list를 set로 만드는 방법
  Set coolSet = Set.from(cool); // set {}으로 만들어준다, 중복 안됨
  print(coolSet); // set {}으로 출력, 중복 안됨

  var n_cool = cool.map((x) {
    // 리스트를 다른 자료형으로 변경
    return '쿨 ${x}'; // [쿨 이재훈, 쿨 유리, 쿨 김성수, 쿨 유리]
  });
  print(n_cool.toList()); // 리스트 []로 출력

  // 화살표 함수 사용
  var n_cool2 = cool.map((x) => '쿨스 ${x}');
  print(n_cool2.toList()); // [쿨스 이재훈, 쿨스 유리, 쿨스 김성수, 쿨스 유리]
  print('-' * 50);

  String number = '13579';
  final res = number.split(''); // 문자열을 리스트 []로 변경
  print(res); // [1, 3, 5, 7, 9]

  // 1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg
  final res2 = number.split('').map((k) => '$k.jpg').toList(); // map으로 순차적으로 리스트 변경
  print(res2); // [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
}
