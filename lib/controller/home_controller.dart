import 'package:get/get.dart';

class HomeController extends GetxController {
// RxInt counter = 0.obs;
  int counter = 0;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
