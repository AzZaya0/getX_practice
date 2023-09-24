import 'package:flutter/material.dart';

class myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.25, size.height, size.width * 0.5, size.height / 2);
    path.quadraticBezierTo(
        size.width * 0.75, size.height, size.width, size.height);

    path.lineTo(size.width, 0);
    // path.quadraticBezierTo(
    //     size.width - 50, 10, size.width / 2, size.height / 2);
    // path.quadraticBezierTo(0, size.height, 0, size.height / 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
