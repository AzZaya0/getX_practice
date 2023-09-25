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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'hero1',
                child: GestureDetector(
                  onTap: () => Get.to(() => HeroScreen()),
                  child: Container(
                    color: Colors.orange,
                    alignment: Alignment.center,
                    height: Get.height * 1,
                    width: Get.width,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
