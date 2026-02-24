import 'Car.dart';
import 'Truck.dart';
import 'Motorcycle.dart';

void main() {
  Car car1 = Car();
  car1.cc = 1600;
  car1.speed = 215;
  car1.model = 2023;
  car1.enginetype = 'Gasoline';
  car1.manufacturer = 'Peugeot';
  car1.price = 1250000;
  car1.transmission = 'Automatic';
  car1.passengers = 5;
  Car car2 = Car();
  car2.cc = 1800;
  car2.speed = 244;
  car2.model = 2022;
  car2.enginetype = 'Hybrid';
  car2.manufacturer = 'BMW';
  car2.price = 2350000;
  car2.transmission = 'Automatic';
  car2.passengers = 5;
  if (car1.speed > car2.speed) {
    car1.PrintInfo();
  } else {
    car2.PrintInfo();
  }

  print('\n');

  Truck truck1 = Truck();
  truck1.cc = 2000;
  truck1.speed = 170;
  truck1.model = 2015;
  truck1.enginetype = 'Diesel';
  truck1.manufacturer = 'Chevrolet';
  truck1.price = 1215000;
  truck1.load = 2000;

  Truck truck2 = Truck();
  truck2.cc = 1800;
  truck2.speed = 150;
  truck2.model = 2024;
  truck2.enginetype = 'Diesel';
  truck2.manufacturer = 'Daihatsu';
  truck2.price = 1720000;
  truck2.load = 1250;

  if (truck1.load > truck2.load) {
    truck1.PrintInfo();
  } else {
    truck2.PrintInfo();
  }
  print('\n');
  Motorcycle moto1 = Motorcycle();
  moto1.cc = 750;
  moto1.speed = 110;
  moto1.model = 2011;
  moto1.enginetype = 'Electric';
  moto1.manufacturer = 'Suzuki';
  moto1.price = 116000;
  moto1.tires = 3;
  moto1.sidecar = true;
  Motorcycle moto2 = Motorcycle();
  moto2.cc = 11400;
  moto2.speed = 200;
  moto2.model = 2021;
  moto2.enginetype = 'Gasoline';
  moto2.manufacturer = 'Honda';
  moto2.price = 1040500;
  moto2.tires = 2;
  moto2.sidecar = false;
  if (moto1.price < moto2.price) {
    moto1.PrintInfo();
  } else {
    moto2.PrintInfo();
  }
}
