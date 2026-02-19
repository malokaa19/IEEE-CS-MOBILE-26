import 'Student.dart';
import 'Instructor.dart';

void main() {
  Student student = Student(name: 'malak', age: 20);
  student.printinfo();
  Instructor instructor = Instructor(name: 'DR Ahmed', age: 30);
  instructor.salary = 3000;
  print(instructor.salary);
  instructor.printinfo();
}
