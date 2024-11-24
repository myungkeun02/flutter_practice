void list() {
  // 제너럴 타입 선언 <String>, <List>, <int> ....
  List<String> blackPink = ["제니", "리사", "로제", "지수"];
  List<int> numbers = [1,2,3,4,5,6];
  List<List> listInList = [["제니","리사",2],["로제","지수",2]]; // List 안의 List 에는 제네릭 타입 선언이 안되어 있기 떄문에 문법 오류가 발생 하지 않는다.

  // INDEX 순서 0 부터 시작
  print(blackPink.length);
  print(blackPink[0]);
  blackPink.add("최명근");
  blackPink.remove("최명근");
  print(blackPink.indexOf("로제"));

}