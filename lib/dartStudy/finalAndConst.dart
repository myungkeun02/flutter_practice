void finalAndConst () {
  final String name =  "최명근";
  print(name);
  // name = "최명근2"; --> final 로 변수를 선언할 경우 상수가 됨 - 값 변경 불가능
  const String name2 = "최명근2";
  print(name2);
  // name2 = "최명근3" --> const 로 변수를 선언할 경우 상수가 됨 - 값 변경 불가

  // final 과 const 는 var 타입을 내장하고 있어 아래처럼 선언이 가능하다.
  final age = 1;
  const sex = "male";

  // 우선 빌드 타임이 무엇이냐 !!
  // 우리가 코드를 작성하면 2진수로 변환이 되는데 이 과정을 빌드타임 이라고 한다.
  // const는 빌드타임에 진입하기 전에 변수에 할당될 데이터를 알고 있어야한다. 따라서 아래 코드는 에러가 발생한다.
  // const DateTime now2 = DateTime.now();

  // 그에 반면 final 로 선언된 변수는 인터프린팅 단계에서 코드를 읽으며 변수에 값을 할당하기에 아래 코드가 정상 작동한다.
  final DateTime now = DateTime.now();


}