import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_app/views/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Screen1(),
      theme: ThemeData(primaryColor: Colors.orangeAccent),
      darkTheme: ThemeData(primaryColor: Colors.white),
    );
  }
}
