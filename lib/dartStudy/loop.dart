void loop () {
  // for
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  List<int> numbers = [1,2,3,4,5,6];

  int total = 0;

  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
    total += numbers[i];
  }
  print(total);

  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }

  // while

  int result = 0;

  while(result < 10) {
    result += 1;
  }
  print(total);


  result = 0;

  do {
    result += 1;
  } while (total < 10);

}