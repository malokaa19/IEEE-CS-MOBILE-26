import 'Student.dart';
import 'StudentEvent.dart';
import 'FullName.dart';

class Undergraduate extends Student implements Studentevent {
  Undergraduate(int id, Fullname fullname, List<double> marks)
    : super(id, fullname, marks);
  @override
  calcGBA() {
    double totalpoints = 0;
    for (var mark in marks) {
      if (mark >= 95)
        totalpoints += 12;
      else if (mark >= 90 && mark < 95)
        totalpoints += 11.5;
      else if (mark >= 85 && mark < 90)
        totalpoints += 11;
      else if (mark >= 80 && mark < 85)
        totalpoints += 10;
      else if (mark >= 75 && mark < 80)
        totalpoints += 9;
      else if (mark >= 70 && mark < 75)
        totalpoints += 8;
      else if (mark >= 65 && mark < 70)
        totalpoints += 7;
      else if (mark >= 60 && mark < 65)
        totalpoints += 6;
      else if (mark >= 56 && mark < 60)
        totalpoints += 5;
      else if (mark >= 53 && mark < 56)
        totalpoints += 4;
      else if (mark >= 50 && mark < 53)
        totalpoints += 3;
      else
        totalpoints += 0;
    }
    return totalpoints / (marks.length * 3);
  }

  @override
  printinfo() {
    print('ID: $id');
    print('Full Name: ${fullname.compeletename}');
    print('Marks: $marks');
    print('GPA: ${calcGBA()}');
  }
}
