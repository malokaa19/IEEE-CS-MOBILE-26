void main() {
  String fname = 'Hello';
  String lname = 'World';
  String Fullname = '$fname $lname';
  print('Concatenated: $Fullname');
  print("length: ${Fullname.length}");
  print('Substring: ${Fullname.substring(0, 7)}');
  print('Uppercase: ${Fullname.toUpperCase()}');
  print('Lowercase: ${Fullname.toLowerCase()}');
}
