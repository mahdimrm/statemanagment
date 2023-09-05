import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:statemanagment/controllers/counter_Controller.dart';
import 'package:statemanagment/screen3.dart';

class Screen2 extends StatelessWidget {
  var controller = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('snackbar 3'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.counter.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/screen3');
                },
                child: const Text('Go to Screen 3 '))
          ],
        ),
      ),
    );
  }
}
