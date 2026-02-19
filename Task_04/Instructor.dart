import 'Student.dart';

class Instructor extends Student {
  int? _salary;
  Instructor({super.age, super.name});
  int? get salary => _salary;
  set salary(val) {
    _salary = val;
  }

  @override
  void printinfo() {
    print('name: $name, age:$age');
    print('Salary : $salary');
  }
}
