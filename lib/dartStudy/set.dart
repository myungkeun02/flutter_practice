void set () {
  // set 과 list 의 차이는 중복값을 넣을수 없다는것이다.
  final Set<String> names = {
    '최명근',
    '최명근'
  };
  print(names);
  names.add('최명근');
  names.add('제니');
  print(names);
  print(names.contains('최명근'));

}