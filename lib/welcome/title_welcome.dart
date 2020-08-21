import 'package:flutter/material.dart';
import 'package:meet_doctor/constants.dart';
import 'package:meet_doctor/home/home.dart';



class WelcomeTextTitle extends StatelessWidget {
  const WelcomeTextTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Find your doctor & \nmake appointment',
                style: kHeadingTextStyle.copyWith(color: kBackgroundColor),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: RaisedButton(
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                  textColor: kTitleTextColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Home())
                      ),
                    );
                  },
                  child: Text(
                    'Get Started',
                    style: kSubTextStyle.copyWith(color: kTitleTextColor),
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


