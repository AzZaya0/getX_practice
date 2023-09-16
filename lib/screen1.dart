import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                Get.back();
              },
              child: Center(child: Text('page back')))
        ],
      ),
    );
  }
}
