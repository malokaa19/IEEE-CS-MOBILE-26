import 'Vehicle.dart';

class Motorcycle extends Vehicle {
  int? _tires;
  int? get tires => this._tires;
  set tires(int value) => this._tires = value;

  bool? _sidecar;
  bool? get sidecar => this._sidecar;
  set sidecar(bool value) => this._sidecar = value;

  @override
  void PrintInfo() {
    super.PrintInfo();
    print('Number of tires: $_tires');
    print('Sidecar: $_sidecar');
  }
}
