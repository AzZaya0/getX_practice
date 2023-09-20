// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
                      onTap: () {
                        print('darkmode');
                        Get.changeTheme(
                            ThemeData.dark()); //idk y but its not working
                      },
                      leading: Icon(Icons.people),
                      title: Text('HELLO World'),
                    ),
                    ListTile(
                      onTap: () {
                        print('light');
                        Get.changeTheme(ThemeData.light());
                        setState(() {});
                      },
                      leading: Icon(Icons.people),
                      title: Text('light'),
                    ),
                  ]),
                ));
              },
              child: Center(child: Text('show bottom sheet'))),
          //device height using getX
          Container(
            height: Get.height * 0.2,
            color: Colors.deepOrange,
            child: Center(child: Text('the height is ${Get.height * 0.2}')),
          )
        ],
      ),
    );
  }
}
