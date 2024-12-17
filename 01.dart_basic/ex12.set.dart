void main() {
  // set : list와 비슷하지만 중복 허용 안함, 순서 보장 안함
  Set<String> names = {'java', 'jsp', 'spring', 'react'};
  print(names); // {java, jsp, spring, react}

  // 추가
  print(names.add('jsp')); // false
  print(names.add('dart')); // true
  print(names); // {java, jsp, spring, react, dart}

  // 삭제
  names.remove('jsp');
  print(names); // {java, spring, react, dart}
}
