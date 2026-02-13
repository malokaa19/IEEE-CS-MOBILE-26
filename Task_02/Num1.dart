import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  List<int> numbers = [];
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      numbers.add(i);
    }
  }
  print(numbers);
}
