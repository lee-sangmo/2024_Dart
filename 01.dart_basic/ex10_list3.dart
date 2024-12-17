void main() {
  // lsit.of() 또는 list.from() 사용하면 원본 리스트를 복제한 후 정렬한다
  // 원본 리스트는 변경되지 않는다
  var numbers = [5, 2, 8, 1, 3];

  var asc = List.of(numbers)..sort((a, b) => a.compareTo(b));
  print('asc : ${asc}'); // [1, 2, 3, 5, 8]

  var desc = List.of(numbers)..sort((a, b) => b.compareTo(a));
  print('desc : ${desc}'); // [8, 5, 3, 2, 1]

  // 원본확인
  print('원본 list : ${numbers}'); // [5, 2, 8, 1, 3]
}
