import 'package:flutter/material.dart';
import 'package:meet_doctor/constants.dart';


class BloodDonate extends StatelessWidget {
  const BloodDonate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    	height: MediaQuery.of(context).size.height * 0.25,
    	child: Stack(
        fit: StackFit.expand,
    		children: <Widget>[
    			Container(
    				decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
    					color: kPrimaryColor,
    					gradient: LinearGradient(
    						begin: Alignment.topCenter,
    						end: Alignment.bottomCenter,
    						colors: [
    							Color(0xFF506CC8),
    							Color(0xFF0D2367),
    						]
    					),
    				),
    			),
    			ClipPath(
            clipper: HomeClipper(),
            child: Container(
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(20),
            )
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Image.asset(
                      'assets/images/donor.png',   
                      fit: BoxFit.fill,                         
                    ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Text(
                        'Blood\n  Donation',
                        textAlign: TextAlign.start,
                        style: kSubTextStyle.copyWith(
                          color: Colors.white, 
                          fontWeight: FontWeight.bold, 
                          fontSize: 20,
                          fontStyle: FontStyle.italic
                        )
                      ),
                      SizedBox(height: 10.0,),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                          '@ New Medical Hall\n20 August 2020\n10 AM - 6 PM',
                          style: kSubTextStyle.copyWith(color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}
                    
                    
class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.75);
    path.cubicTo(size.width * 0.3, size.height * 0.8, size.width * 0.3, size.height * 0.1 , size.width * 0.5, 0);
    path.close();
    return path;
  }
  
    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
      return false;
  }
}
