import 'package:flutter/material.dart';
import 'package:meet_doctor/constants.dart';
import 'package:meet_doctor/home/home.dart';
import 'package:meet_doctor/welcome/welcome.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meet Doctor',
      theme: ThemeData(
          fontFamily: 'Poppins',
          textTheme: TextTheme(bodyText2: TextStyle(color: kBodyTextColor)),
      ),
      home: WelcomeScreen(),
    );
  }
}





