import 'package:flutter/material.dart';
import 'package:meet_doctor/constants.dart';

class ArticleCard extends StatelessWidget {

  final String title;
  final String author;
  final String doctorImage;

  ArticleCard({
    Key key,
    @required this.title,
     @required this.author,
     @required this.doctorImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      height: 130,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10,
              color: kShadowColor,
            ),
          ]),
      child: Stack(
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(
                  color: kTertiaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  )),
              child: Image.asset(
                doctorImage,
                fit: BoxFit.fill,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(color: kBodyTextColor, fontSize: 16)),
                    Text(
                      author,
                      style: TextStyle(color: kTextLightColor, fontSize: 12),
                    ),
                  ],
                ),
              ),
            )
          ]),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              icon: Icon(Icons.navigate_next), 
              onPressed: (){},
            )
          )
        ],
      ),
    );
  }
}
