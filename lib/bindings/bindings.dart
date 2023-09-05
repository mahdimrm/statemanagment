import 'package:get/get.dart';
import 'package:statemanagment/controllers/counter_Controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    // Get.put(CounterController(), permanent: false);
    Get.lazyPut(() => CounterController());
  }
}
