import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/counter_controller.dart';

class Screen3 extends StatelessWidget {
  var controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
        centerTitle: true,
        backgroundColor: Colors.purple,
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
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: () {
                //! gets back to the mentioned screen & destroy all previous pages. there wont be any back buttons(no screen to get back to, they're all gone):
                Get.toNamed('/screen1');
              },
              child: const Text('back to screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}
