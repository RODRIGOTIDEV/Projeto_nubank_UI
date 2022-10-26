import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String saldo = 'R\$ 920.789,88';
  bool eyeVolue = true;
  String creditCardValue = 'R\$ 5000,00';

  void showValue() {
    eyeVolue = !eyeVolue;
    update();
  }
}
