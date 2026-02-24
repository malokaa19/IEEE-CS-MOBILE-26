import 'Postgraduate.dart';
import 'Undergraduate.dart';
import 'FullName.dart';

void main() {
  Fullname name1 = Fullname('Ali', 'Mohamed', 'Nabil');
  Fullname name2 = Fullname('Mariem', 'Tarek', 'Mohammed');
  Postgraduate poststudent = Postgraduate(30610021628104, name1, [
    75,
    85,
    55,
    80,
    89,
    90,
  ]);
  poststudent.printinfo();
  Undergraduate understudent = Undergraduate(30610557828104, name2, [
    90,
    75,
    65,
    87,
    80,
    100,
  ]);
  understudent.printinfo();
}
