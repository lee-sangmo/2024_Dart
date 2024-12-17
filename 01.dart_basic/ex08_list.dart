void main() {
  // 시험문제!!! (결과를 유추)

  // Dart에서는 배열 대신 list 사용
  // list 중복가능
  List<String> list = ["둘리", "희동이"];
  print(list);
  print(list[0]); // 인덱스를 이용한 요소 꺼내기
  print(list.length); // list 길이
  print('-' * 30);

  // 하나 추가 : add()
  list.add("도우너");
  print(list);

  // 여러개 추가 : addAll()
  list.addAll(["공실이", "둘리"]);
  print(list);

  // 삽입 : insert()
  list.insert(1, "박지성");
  print(list);

  // 삽입 : insertAll()
  list.insertAll(1, ["손흥민", "김민재"]);
  print(list);

  // 하나 삭제 : remove(object)   여러개 있을 때는 앞에 요소가 삭제됨
  list.remove("둘리");
  print(list);

  // removeAt(index)
  list.removeAt(3);
  print(list);

  list.removeLast();
  print(list);

  list.removeRange(1, 3);
  print(list); // ["손흥민", "도우너", "공실이"]
  print('-' * 30);

  list = ["Spring", "Java", "Dart"];
  // 포함 여부 확인 : contains()
  print(list.contains("Java")); // true

  // 특정 요소 index 확인 : indexOf()
  print(list.indexOf("Dart")); // 2

  // 서브 리스트 반환 : sublist()
  print(list.sublist(1, 3)); // ["Java", "Dart"]
  print(list); // 원래 list는 그대로 이다

  // list 뒤집기 : reverse()
  print(list.reversed.toList()); // ["Dart", "Java", "Spring"]

  // list 초기화 : clear()
  list.clear();
  print('${list}, ${list.length}');
}
