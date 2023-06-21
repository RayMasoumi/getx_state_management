import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/counter_controller.dart';

class Screen1 extends StatelessWidget {
  var controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Welcome Screen'),
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
                onPressed: () {
                  //! goes to the mentioned screen & disables back option(you can't get back to this screen (splash screen))
                  Get.toNamed('/screen2');
                },
                child: const Text('Go to screen2')),
          ],
        ),
      ),
    );
  }
}
