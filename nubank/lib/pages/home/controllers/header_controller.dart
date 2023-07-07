import 'package:get/get.dart';
import 'package:nubank/pages/account/controllers/account_controller.dart';

class HeaderController extends GetxController {
  String balance =
      'R\$ ${AccountController().balance.toStringAsFixed(2).replaceAll(',', '.').replaceAllMapped(
            RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
            (match) => '${match[1]}.',
          )}';
  bool eyesValue = true;

  void showBalance() {
    eyesValue = !eyesValue;
    eyesValue == true
        ? balance =
            'R\$ ${AccountController().balance.toStringAsFixed(2).replaceAll(',', '.').replaceAllMapped(
                  RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                  (match) => '${match[1]}.',
                )}'
        : balance = '****';
    update();
  }
}
