import 'Vehicle.dart';

class Car extends Vehicle {
  String? _transmission;
  String get transmission => this._transmission!;
  set transmission(String value) => this._transmission = value;

  int? _passengers;
  int? get passengers => this._passengers;
  set passengers(int value) => this._passengers = value;

  @override
  void PrintInfo() {
    super.PrintInfo();
    print('Transmission: $_transmission');
    print('Number of passengers: $_passengers');
  }
}
