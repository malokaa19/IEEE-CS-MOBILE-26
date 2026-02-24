import 'Vehicle.dart';

class Truck extends Vehicle {
  int _load = 0;
  int get load => this._load;
  set load(int value) => this._load = value;
  @override
  void PrintInfo() {
    super.PrintInfo();
    print('Load capacity: $_load');
  }
}
