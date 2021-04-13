import 'package:flutter/material.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(size.width / 16, size.height / 4.02);
    path.lineTo(size.width - 20, 0.0);
    path.quadraticBezierTo(size.width, 0.0, size.width, size.height / 32);
    path.lineTo(size.width, size.height - 20);
    path.quadraticBezierTo(
        size.width, size.height, size.width - 20, size.height);
    path.lineTo(size.width / 16, size.height);
    path.quadraticBezierTo(0.0, size.height, 0.0, size.height - 20);
    path.lineTo(0.0, size.height / 3.2);
    path.quadraticBezierTo(
        0.0, size.height / 3.8, size.width / 16, size.height / 4);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
