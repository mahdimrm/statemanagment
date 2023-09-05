import 'package:get/get.dart';

class CounterController extends GetxController {
  // var counter = 0.obs;
  // void increment() {
  //   counter.value++;
  // }
  int counter = 0;
  void increment() {
    counter++;
    update(['1']);
  }
}
