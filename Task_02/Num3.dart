import 'dart:io';

void main() {
  String? num1 = stdin.readLineSync()!;
  int x = int.parse(num1);
  String? num2 = stdin.readLineSync()!;
  int y = int.parse(num2);
  if (x > 0 && y > 0) {
    print(1);
  } else if (x > 0 && y < 0) {
    print(4);
  } else if (x < 0 && y > 0) {
    print(2);
  } else if (x < 0 && y < 0) {
    print(3);
  }
}
