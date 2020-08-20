import 'package:flutter/material.dart';
import 'package:meet_doctor/home/card_specialist.dart';

class Specialists extends StatelessWidget {
  const Specialists({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text(
            'Specialist', 
            style: TextStyle(color: Colors.black87, fontSize: 20),
          )
        ),
        Row(
          children: [
            SpecialistCard(imagePath: 'assets/images/toothache.png', specialist: 'Dentist',),
            SpecialistCard(imagePath: 'assets/images/heart-rate.png', specialist: 'Cardiologist',),
          ],
        ),
        Row(
          children: [
            SpecialistCard(imagePath: 'assets/images/brain.png', specialist: 'Psychiatrist',),
            SpecialistCard(imagePath: 'assets/images/group.png', specialist: 'See more',),
          ],
        ),
      ],
    );
  }
}