void nullable () {
  // nullable - null이 될 수 있다.
  // non-nullable - null이 될  수 없다.
  // null - 아무런 값도 있지 않다.

  String hello = "Hello world";
  print(hello);
   // name = null; 불가능
  String? bye = "Bye world";
  print(bye);
  bye = null; // 가능
  print(bye!); // null이 가능한 bye 값은 ! 가 붙어서 더이상 null이 될 수 없다
}