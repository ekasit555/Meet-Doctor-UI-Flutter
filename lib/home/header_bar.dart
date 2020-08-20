import 'package:flutter/material.dart';
import 'package:meet_doctor/welcome/welcome.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          padding: EdgeInsets.all(0.0),
          icon: Icon(Icons.list), 
          iconSize: 30,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => WelcomeScreen())
              ),
            );
          },  
        ),
        Icon(Icons.search, size: 30),
      ],
    );
  }
}