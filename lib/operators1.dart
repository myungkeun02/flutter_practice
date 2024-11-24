void operators () {
  int number = 2;
  print(number);

  print(number + 2);
  print(number - 2);
  print(number * 2);
  print(number / 2);
  print(number % 2);
  print(number);

  number ++;
  print(number);

  number --;
  print(number);

  number += 4;
  print(number);

  double? num = 4.0;
  print(num);
  num = null;
  print(num);
  num ??= 3.0; // num 이 null 이면 3.0 을 할당한다는 뜻
  print(num);

  print(num > number);
  print(num < number);
  print(num == number);
  print(num != number);
  print(num >= number);
  print(num <= number);

  int integer = 1;
  print(integer is int);
  print(integer is String);
  print(integer is! String);

  bool result1 = 12 > 10 && 1 >0;
  print(result1);

  bool result2 = 12 > 10 || 1 >0;
  print(result2);
}