import 'dart:io';

int potatoes(int p0, int w0, int p1) {
  int dry = w0 * (100 - p0) ~/ 100;
  int w1 = dry * 100 ~/ (100 - p1);
  return w1;
}

void main() {
  int p0 = int.parse(stdin.readLineSync()!);
  int w0 = int.parse(stdin.readLineSync()!);
  int p1 = int.parse(stdin.readLineSync()!);

  int result = potatoes(p0, w0, p1);

  print(result);
}
