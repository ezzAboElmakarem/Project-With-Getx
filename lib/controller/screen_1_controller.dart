import 'package:get/get.dart';

class Screen1Controller extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }
}
