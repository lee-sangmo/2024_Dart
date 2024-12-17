void main() {
  // Map{key:value}
  Map<String, String> map = {'id': 'hong', 'pw': 'h123', 'name': '홍길동'};
  print(map); // {id: hong, pw: h123, name: 홍길동}

  // 키값 추가
  map['age'] = '24';
  print(map); // {id: hong, pw: h123, name: 홍길동, age: 24}

  // 여러개 추가
  map.addAll({'addr': '서울', 'email': 'hong@gmail.com', 'phone': '010-1234-5678'});
  print(map); // {id: hong, pw: h123, name: 홍길동, age: 24, addr: 서울, email: hong@gmail.com, phone: 010-1234-5678}

  // 데이터 변경
  map['id'] = 'kang';
  print(map); // {id: kang, pw: h123, name: 홍길동, age: 24, addr: 서울, email: hong@gmail.com, phone: 010-1234-5678}

  // 꺼내기
  print(map['name']); // 홍길동

  // 삭제
  map.remove('age');
  print(map); // {id: hong, pw: h123, name: 홍길동, addr: 서울, email: hong@gmail.com, phone: 010-1234-5678}

  // key 값 가져오기, value 값 가져오기
  print('key : ${map.keys}'); // [id, pw, name, addr, email, phone]
  print('value : ${map.values}'); // [kang, h123, 홍길동, 서울, hong@gmail.com, 010-1234-5678]
}
