void main() {
  // List<int> num = [5, 2, 8, 1, 3];
  var nums = [5, 2, 8, 1, 3];
  print(nums);

  // 정렬 : sort()
  nums.sort();
  print('asc : ${nums}');
  print('desc : ${nums.reversed.toList()}');

  var words = [
    "Banana",
    "Apple",
    "Cherry",
    "banana",
    "apple",
    "cherry",
    '1',
    '10',
    '20',
    '3',
    '가',
    '하',
    '바'
  ];
  words.sort();
  print(
      'asc : ${words}'); // [1, 10, 20, 3, Apple, Banana, Cherry, apple, banana, cherry, 가, 바, 하]
  print('-' * 100);

  nums = [5, 2, 8, 1, 3];
  nums.sort((a, b) => b.compareTo(a)); // 비교해서 큰 수가 앞으로 오도록 정렬 => 내림차순
  print('desc : ${nums}'); // [8, 5, 3, 2, 1]

  words = [
    "Banana",
    "Apple",
    "Cherry",
    "banana",
    "apple",
    "cherry",
    '1',
    '10',
    '20',
    '3',
    '가',
    '하',
    '바'
  ];
  words.sort((a, b) => b.compareTo(a));
  print(
      'desc : ${words}'); // [하, 바, 가, cherry, banana, apple, Cherry, Banana, Apple, 3, 20, 10, 1]
}
