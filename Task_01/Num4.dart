import 'dart:io';

void main() {
  String? num = stdin.readLineSync()!;
  int x = int.parse(num);
  int copy = x;
  int rev = 0;
  while (x != 0) {
    rev = rev * 10 + x % 10;
    x = x ~/ 10;
  }
  if (copy == rev) {
    print('is a Palindrome');
  } else {
    print('not a Palindrome');
  }
}
