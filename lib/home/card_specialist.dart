import 'package:flutter/material.dart';
import 'package:meet_doctor/constants.dart';

class SpecialistCard extends StatelessWidget {
  final String imagePath;
  final String specialist;

  const SpecialistCard({
    Key key,
    this.imagePath,
    this.specialist
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)  ,
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(0,10),
              blurRadius: 6,
              color: kShadowColor,
            ),
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor.withOpacity(0.15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(imagePath),
              ),
            ),
            SizedBox(height: 10,),
            Text(specialist)
          ],
        ),
      ),
    );
  }
}