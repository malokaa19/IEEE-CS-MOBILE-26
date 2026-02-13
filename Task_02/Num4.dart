import 'dart:io';

void main() {
  int size = int.parse(stdin.readLineSync()!);
  List<int> numbers = [];
  for (int i = 0; i < size; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i] * numbers[i];
  }
  print(sum);
}
