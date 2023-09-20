import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_app/views/screen1.dart';
import 'package:get_x_app/views/screen2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Screen1());
                },
                child: Text('next Page')),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Screen2());
                },
                child: Text('encreament page')),
          )
        ],
      ),
    );
  }
}
