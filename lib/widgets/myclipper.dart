import 'package:flutter/material.dart';

class myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 0.38, size.height * 0.92);
    path.cubicTo(size.width * 0.29, size.height * 1.02, size.width * 0.09,
        size.height * 1.03, 0, size.height * 0.92);
    path.cubicTo(0, size.height * 0.92, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width * 1.02, size.height * 0.39, size.width * 0.93,
        size.height * 0.56, size.width * 0.8, size.height * 0.65);
    path.cubicTo(size.width * 0.67, size.height * 0.73, size.width * 0.51,
        size.height * 0.78, size.width * 0.38, size.height * 0.92);
    path.cubicTo(size.width * 0.38, size.height * 0.92, size.width * 0.38,
        size.height * 0.92, size.width * 0.38, size.height * 0.92);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class myBottomclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.7, size.height * 0.14, size.width * 0.78, -0.06,
        size.width, size.height * 0.02);
    path.cubicTo(size.width, size.height * 0.02, size.width, size.height,
        size.width, size.height);
    path.cubicTo(size.width, size.height, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height * 0.78, -0.01, size.height * 0.56,
        size.width * 0.13, size.height * 0.42);
    path.cubicTo(size.width * 0.27, size.height * 0.28, size.width * 0.37,
        size.height * 0.47, size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.55, size.height * 0.29, size.width * 0.55,
        size.height * 0.29, size.width * 0.55, size.height * 0.29);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
