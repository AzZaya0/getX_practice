import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_app/screen1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                Get.to(() => Screen1());
              },
              child: Center(child: Text('next Page')))
        ],
      ),
    );
  }
}
