import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(dblLinear(n));
}

int dblLinear(int n) {
  List<int> list = [1];

  for (int i = 0; i <= n; i++) {
    int x = list[i];

    list.addAll([2 * x + 1, 3 * x + 1]);
  }

  list = list.toSet().toList();
  list.sort();

  return list[n];
}
