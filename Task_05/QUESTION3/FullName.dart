class Fullname {
  String? _fname;
  String? get fname => this._fname;
  set fname(String? value) => this._fname = value;

  String? _mname;
  String? get mname => this._mname;
  set mname(String value) => this._mname = value;

  String? _surname;
  String? get surname => this._surname;
  set surname(String value) => this._surname = value;
  String get compeletename => "$_fname $_mname $_surname";
  Fullname(this._fname, this._mname, this._surname);
}
