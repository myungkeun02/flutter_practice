void function () {
  addNumbers(1, 2, 3);
}

// 세개의 숫자 (x,y,z) 를 더하고 짝수인지 홀수인지 알려주는 함수

String addNumbers(x, y, z) {
  int sum = x + y + z;
  return sum/2 == 0 ? "짝수" : "홀수";
}

// arrow function 사용가능