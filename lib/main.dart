import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/screen1.dart';
import 'package:getx_state_management/screen2.dart';
import 'package:getx_state_management/screen3.dart';

//! Get.toNamed -- goes to another screen

//! Get.offNamed closes the current screen and goes to another screen

//! Get.offAllNamed closes all screens and goes to another screen:

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/screen1', page: () => Screen1()),
        GetPage(name: '/screen2', page: () => Screen2()),
        GetPage(name: '/screen3', page: () => Screen3()),
      ],
      initialRoute: '/screen1',
    );
  }
}
