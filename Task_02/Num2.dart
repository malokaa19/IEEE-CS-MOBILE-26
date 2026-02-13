import 'dart:io';

void main() {
  String? s = stdin.readLineSync()!;
  int mid = s.length ~/ 2;
  if (s.length.isEven) {
    print(s[mid - 1] + s[mid]);
  } else {
    print(s[mid]);
  }
}
