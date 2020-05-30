import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

class BasvurularWidget extends StatelessWidget {
  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: c.height(10.0)),
      child: Container(
        width: c.width(322),
        height: c.height(40),
        decoration: BoxDecoration(
            color: Color(0xffffd500), borderRadius: BorderRadius.circular(21)),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: c.width(10.0)),
              child: Text(
                "Arzu Gök ",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xffffffff),
                  fontSize: c.font(14),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(10.0)),
              child: Text(
                "Güzellik Uzm.\nKadıköy",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(12),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(10.0)),
              child: Text(
                "Kadın \n21",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(12),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(10.0)),
              child: Text(
                "10.10.2019",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(14),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
