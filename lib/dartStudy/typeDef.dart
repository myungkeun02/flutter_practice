void typeDef () {
  Operation operation = add;
  int result = operation(10, 20, 30);
  print(result);

  operation = subtract;
  result = operation(10, 20, 30);
  print(result);

  print(
      calculate(10, 20, 30, add)
  );
}

typedef Operation = int Function(int x, int y, int z);

// 더하기

int add(int x, int y, int z) => x + y + z;

// 빼기
int subtract (x, y, z)  => x - y - z;


int calculate (int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}
