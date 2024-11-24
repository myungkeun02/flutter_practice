void map () {
  // Map 은 key - value 형태
    Map<String, String> dictionary = { // list 와 똑같이 제네릭 타입 선언이 가능 하다. keyType, valueType 순서 이다.
      'apple' : '사과',
      'banana' : '바나나' // banana 가 key 바나나 가 value
    };

    print(dictionary);

    dictionary.addAll({'cat' : '고양이'});
    print(dictionary);
    print(dictionary['cat']); // key 에 해당 하는 value 를 가져올 수 있음
    dictionary.remove('cat');
    print(dictionary);
    print(dictionary.keys);

}