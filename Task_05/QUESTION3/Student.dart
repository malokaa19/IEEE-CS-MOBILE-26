import 'FullName.dart';

class Student {
  int _id;
  int get id => this._id;
  set id(int value) => this._id = value;

  Fullname _fullname;
  Fullname get fullname => this._fullname;
  set fullname(Fullname value) => this._fullname = value;

  List<double> _marks;
  List<double> get marks => this._marks;
  set marks(List<double> value) => this._marks = value;

  Student(this._id, this._fullname, this._marks);
}
