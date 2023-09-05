import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagment/bindings/bindings.dart';
import 'package:statemanagment/screen1.dart';
import 'package:statemanagment/screen2.dart';
import 'package:statemanagment/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/screen1', page: () => Screen1()),
        GetPage(name: '/screen2', page: () => Screen2()),
        GetPage(name: '/screen3', page: () => const Screen3()),
      ],
      initialRoute: '/screen1',
    );
  }
}
