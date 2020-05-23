import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

class BulletWidget extends StatelessWidget {

  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:c.height(20.0)),
      child: Row(
        children: <Widget>[
          Container(
            width: c.width(12),
            height: c.height(12),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/bullet_blue.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:c.width(10.0)),
            child: Text(
              "Bayan",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff000000),
                fontSize: c.font(15),
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
