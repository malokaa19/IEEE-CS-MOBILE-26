class Vehicle {
  int? _cc;
  int? get cc => this._cc;
  set cc(int? value) => this._cc = value;

  int _speed = 0;
  int get speed => this._speed;
  set speed(int value) => this._speed = value;

  String? _enginetype;
  String get enginetype => this._enginetype!;
  set enginetype(String value) => this._enginetype = value;

  int? _model;
  int? get model => this._model;
  set model(int? value) => this._model = value;

  String? _manufacturer;
  String get manufacturer => this._manufacturer!;
  set manufacturer(String value) => this._manufacturer = value;

  int _price = 0;
  int get price => this._price;
  set price(value) => this._price = value;

  void PrintInfo() {
    print('Cylinder Capacity: $_cc CC');
    print('Maximum Speed: $_speed km/hr');
    print('Engine Type: $_enginetype');
    print('Model: $_model');
    print('Manufavturer: $_manufacturer');
    print('Price: $_price Pounds');
  }
}
