import 'package:get/get.dart';

class HomePageController extends GetxController {
  String balance = "";
  bool eyesValue = true;

  void showBalance() {
    eyesValue = !eyesValue;
    update();
  }
}
