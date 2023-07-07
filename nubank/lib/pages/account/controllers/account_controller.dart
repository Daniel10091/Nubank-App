import 'package:get/get.dart';

class AccountController extends GetxController {
  double balance = 4210.85;

  void deposit(double amount) {
    balance += amount;
    update();
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      throw Exception('Saldo insuficiente');
    }
    update();
  }

  void reset() {
    balance = 0.0;
    update();
  }
}
