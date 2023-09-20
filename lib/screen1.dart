// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
              child: Center(child: Text('page back'))),
          InkWell(
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(children: [
                    ListTile(
                      leading: Icon(Icons.people),
                      title: Text('HELLO World'),
                    ),
                  ]),
                ));
              },
              child: Center(child: Text('show bottom sheet')))
        ],
      ),
    );
  }
}
