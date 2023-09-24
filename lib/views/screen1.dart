// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_app/views/heroScreen.dart';
import 'package:get_x_app/widgets/myclipper.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('back')),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.bottomSheet(Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(children: [
                            ListTile(
                              onTap: () {
                                print('darkmode');
                                Get.changeTheme(ThemeData
                                    .dark()); //idk y but its not working
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
                      child: Text('show bottom sheet')),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => HeroScreen());
                      },
                      child: Text('heroScreen')),
                ),
                //now we use ClipPath
                Hero(
                  tag: 'hero1',
                  child: GestureDetector(
                    onTap: () => Get.to(() => HeroScreen()),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange,
                      ),
                      alignment: Alignment.center,
                      height: 200,
                      width: 400,
                      child: Text('hello'),
                    ),
                  ),
                )
              ],
            ),
            ClipPath(
              clipper: myclipper(),
              child: Container(
                height: Get.height * 0.2,
                width: Get.width,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
