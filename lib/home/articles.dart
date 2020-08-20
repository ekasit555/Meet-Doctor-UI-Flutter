import 'package:flutter/material.dart';
import 'package:meet_doctor/home/card_article.dart';

class Articles extends StatelessWidget {
  const Articles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text(
            'Medical Articles', 
            style: TextStyle(color: Colors.black87, fontSize: 20),
          )
        ),
        ArticleCard(title: "How 'good virus' may influence health", author: 'by Dr.Natasha', doctorImage: 'assets/images/doctor-real.png',),
        ArticleCard(title: "Corona Virus Understanding", author: 'by Dr.Natasha', doctorImage: 'assets/images/doctor-real.png',),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
          alignment: Alignment.centerRight,
          child: Text(
            "see more",
          ),
        )
      ],
    );
  }
}