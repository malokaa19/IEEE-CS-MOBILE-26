bool isTidy(int number) {
  String numStr = number.toString();

  for (int i = 0; i < numStr.length - 1; i++) {
    if (int.parse(numStr[i]) > int.parse(numStr[i + 1])) {
      return false;
    }
  }

  return true;
}

void main() {
  print(isTidy(12));
  print(isTidy(102));
  print(isTidy(1234));
}
