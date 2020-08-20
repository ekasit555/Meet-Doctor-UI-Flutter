import 'package:flutter/material.dart';
import 'package:meet_doctor/constants.dart';

class BackgroundBase extends StatelessWidget {
  const BackgroundBase({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: kSecondaryColor,
      ),
    );
  }
}

class BackgroundClipPath extends StatelessWidget {
  const BackgroundClipPath({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MainClipper(),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF506CC8),
              Color(0xFF0D2367),
            ]
          ),
        ),
      ),
    );
  }
}


class MainClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.85);
    path.quadraticBezierTo(
        size.width * 0.95, size.height, size.width * 0.7, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.8 - 30,
        size.width * 0.3, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.85,
        size.width * 0.05 + 10, size.height * 0.5 + 20);
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.4,
        size.width * 0.3, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.45, size.height * 0.3,
        size.width * 0.75, size.height * 0.3 + 10);
    path.quadraticBezierTo(size.width * 0.95, size.height * 0.3 + 15,
        size.width, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}