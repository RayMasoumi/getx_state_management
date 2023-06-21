import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/counter_controller.dart';

class Screen2 extends StatelessWidget {
  var controller = Get.find<CounterController>();

  Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Screen 2'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(builder: (value) {
              return Text(
                controller.counter.toString(),
                style: const TextStyle(fontSize: 30),
              );
            }),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                //! goes to the mentioned screen:
                Get.toNamed('/screen3');
              },
              child: const Text('Go to screen3'),
            ),
          ],
        ),
      ),
    );
  }
}
