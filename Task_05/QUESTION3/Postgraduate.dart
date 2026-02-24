import 'FullName.dart';
import 'Student.dart';
import 'StudentEvent.dart';

class Postgraduate extends Student implements Studentevent {
  Postgraduate(int id, Fullname fullname, List<double> marks)
    : super(id, fullname, marks);
  @override
  calcGBA() {
    double totalpoints = 0;
    for (var mark in marks) {
      if (mark >= 95)
        totalpoints += 12;
      else if (mark >= 85 && mark < 90)
        totalpoints += 32 / 3;
      else if (mark >= 80 && mark < 85)
        totalpoints += 31 / 3;
      else if (mark >= 75 && mark < 80)
        totalpoints += 10;
      else if (mark >= 70 && mark < 75)
        totalpoints += 22 / 3;
      else if (mark >= 65 && mark < 70)
        totalpoints += 7;
      else if (mark >= 60 && mark < 65)
        totalpoints += 6;
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
