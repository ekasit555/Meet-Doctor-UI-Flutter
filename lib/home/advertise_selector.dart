import 'package:flutter/material.dart';
import 'package:meet_doctor/constants.dart';

class AdvertiseSelector extends StatelessWidget {
  final bool active;

  const AdvertiseSelector({
    Key key,
    this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
      height: 10,
      width: active ? 40: 10,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      )
    );
  }
}


class AdvertiseSelectors extends StatelessWidget {
  const AdvertiseSelectors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AdvertiseSelector(active: true,),
          AdvertiseSelector(active: false,),
          AdvertiseSelector(active: false,), 
        ]
      ),
    );
  }
}