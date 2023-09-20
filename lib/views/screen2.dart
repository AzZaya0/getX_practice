import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_app/controller/counterController.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    // initializing dependency injection
    CounterController controller = Get.put(CounterController());
    print('build');

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text(controller.count.toString())),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  controller.increase();
                },
                child: Text('increase')),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  controller.count > 0 ? controller.decrease() : null;
                },
                child: Text('decrease')),
          )
        ],
      ),
    );
  }
}
