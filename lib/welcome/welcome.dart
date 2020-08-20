import 'package:flutter/material.dart';
import 'package:meet_doctor/welcome/bg_welcome.dart';
import 'package:meet_doctor/welcome/image_welcome.dart';
import 'package:meet_doctor/welcome/title_welcome.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
        BackgroundBase(),
        BackgroundClipPath(),
        WelcomeTextTitle(),
        SizedBox(height: 50,),
        ImageWelcome()
      ]),
    );
  }
}