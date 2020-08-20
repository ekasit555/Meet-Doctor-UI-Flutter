import 'package:flutter/material.dart';

class ImageWelcome extends StatelessWidget {
  const ImageWelcome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Image.asset(
            'assets/images/doctor.png',
            fit: BoxFit.fitWidth,
            scale: 1.1,
          ),
        ),
    );
  }
}