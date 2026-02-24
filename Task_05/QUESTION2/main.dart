import 'dart:io';
import 'Bankaccount.dart';
import 'Client.dart';

void main() {
  String clientname = stdin.readLineSync()!;
  String clientnumber = stdin.readLineSync()!;
  Client c1 = Client(clientname, clientnumber);
  Bankaccount acc1 = Bankaccount(73740192, "Current", 25000, "EGP");
  Bankaccount acc2 = Bankaccount(73700438, "Saving", 1800, "USD");
  c1.addaccount(acc1);
  c1.addaccount(acc2);
  acc1.deposite(1500);
  acc2.withdraw(5000);
  acc2.withdraw(300);

  c1.printinfo();
}
