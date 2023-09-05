import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:statemanagment/controllers/counter_Controller.dart';
import 'package:statemanagment/screen2.dart';

//Get View
class Screen1 extends StatelessWidget {
  // var controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.find<CounterController>().increment();
          },
          child: const Icon(Icons.add)),
      appBar: AppBar(
        title: const Text('snackbar 3'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() {
            //   return Text(
            //     controller.counter.value.toString(),
            //     //! Or Get.find<CounterController>().counter.value.toString()
            //     style: const TextStyle(fontSize: 40),
            //   );
            // }),
            GetBuilder<CounterController>(
                id: '1',
                builder: (value) {
                  return Text(
                    value.counter.toString(),
                    //! Or Get.find<CounterController>().counter.value.toString()
                    style: const TextStyle(fontSize: 40),
                  );
                }),
            ElevatedButton(
                onPressed: () {
                  Get.offNamed('/screen2');
                },
                child: const Text('Go to Screen 2 '))
          ],
        ),
      ),
    );
  }
}


///Get.ToNamed()
///Get.offNamed()
///Get.offAllNamed()