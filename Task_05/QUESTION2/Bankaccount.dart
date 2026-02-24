class Bankaccount {
  int accountnum = 0;
  String accounttype;
  int balance = 0;
  String currency;
  Bankaccount(this.accountnum, this.accounttype, this.balance, this.currency);

  void deposite(int val) {
    balance += val;
  }

  void withdraw(int val) {
    if (balance >= val) {
      balance -= val;
    }
  }

  void printacc() {
    print('Account Number: $accountnum');
    print('Account Type: $accounttype');
    print('Balance: $balance $currency');
    print('\n');
  }
}
