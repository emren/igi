import 'package:flutter/material.dart';

class BulletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:20.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/bullet_blue.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:10.0),
            child: Text(
              "Bayan",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff000000),
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
