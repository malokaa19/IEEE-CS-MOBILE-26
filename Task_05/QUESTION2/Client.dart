import 'Bankaccount.dart';

class Client {
  String cname;
  String cnumber;
  List<Bankaccount> bankacc = [];
  Client(this.cname, this.cnumber);
  void addaccount(Bankaccount acc) {
    bankacc.add(acc);
  }

  void printinfo() {
    print('Client Number: $cnumber');
    print('Client Name: $cname');
    print('Account Details: \n');

    for (var account in bankacc) {
      account.printacc();
    }
  }
}
