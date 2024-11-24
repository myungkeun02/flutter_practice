void type () {
  var variable = "모든 타입 지정 가능 but 처음 할당한 값의 타입으로 고정";
  int integer = 1; // 정수
  double double1 = 2.5; // 실수
  String string = "글자";
  print(integer + double1);
  print(string);
  print('${string.runtimeType} ${integer}');
  dynamic dynamic1 = '모든 타입 지정 가능하며 기존 선언한 타입과 다른 타입으로 재할당 가능';
  bool boolean = true;
}