import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_app/widgets/myclipper.dart';

class HeroScreen extends StatefulWidget {
  const HeroScreen({super.key});

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
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
                      height: 50,
                      width: 200,
                   
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
