import 'package:flutter/material.dart';
import 'package:meet_doctor/home/advertise_selector.dart';
import 'package:meet_doctor/home/articles.dart';
import 'package:meet_doctor/home/blood_donate.dart';
import 'package:meet_doctor/home/header_bar.dart';
import 'package:meet_doctor/home/specialists.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
				child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                HeaderBar(),
                SizedBox(height: 15,),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      BloodDonate(),
                      AdvertiseSelectors(),
                      SizedBox(height: 15,),
                      Specialists(),
                      SizedBox(height: 25,),
                      Articles(),
                    ],
                  ),
                ),
              ]
            ),
				  )
      ),
    );
  }
}








